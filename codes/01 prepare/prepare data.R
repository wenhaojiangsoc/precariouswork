rm(list = ls())

## load packages
library(reshape2)
library(tidyverse)
library(ggplot2)
library(stargazer)
library(lfe)
require(MASS)
library(corrplot)
library(factoextra)
library(ggpubr)
library(dpm)
library(ltm)
library(mirt)
library(psych)
library(fastDummies)
library(matrixStats)

#~#~#~#~#~#~#~#~#~#~#~#~#~
###### Prepare File ###### 
#~#~#~#~#~#~#~#~#~#~#~#~#~

## set working directory
setwd("/Users/wenhao/Library/CloudStorage/Dropbox/RA Linsey/github_share")

## read file
df <- read.csv("data source/precarious.csv")

## rename variables - source code manually created and omitted
source("codes/01 prepare/rename.R")

## transform the format from wide to long, allowing unbalance
dfL <- melt(df, id.vars="ID")
dfL <- cbind(dfL, colsplit(dfL$variable, "_", c("var", "year")))
df <- dcast(dfL, ID + year ~ var, value.var="value")
rm(dfL)

## fill in birthday, race, and sex for all years
df <- df %>% 
  group_by(ID) %>% 
  fill(birth.month, birth.year, race, sex, calm29, blue29, grit)

## replace all negative values by NA by the NLSY coding rule
df[df < 0] <- NA
df <- df[which(!is.na(df$year)),]

## check the # of total obs.
dim(df) # 170696 person-years (19 rounds * 8984 ind.)

## create age
df$age <- df$year-df$birth.year

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
###### Spouse and Marriage ###### 
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#

## locate spouse
for (i in seq(1,8,1)){
  member <- paste0("hh.relation.", i)
  df[which(df[, member] <= 2), "relation"] <- i
  df[which(df[, member] == 69), "relation"] <- i
} ## member 69 indicates lover/partner

## locate spouse's schedule
df[which(!is.na(df$relation)), "sp.schedule.decision.loc"] <- 
  paste0("hh.schedule.decision.", df[which(!is.na(df$relation)), ]$relation)
df[which(!is.na(df$relation)), "sp.schedule.notice.loc"] <- 
  paste0("hh.schedule.notice.", df[which(!is.na(df$relation)), ]$relation)

df$spouse.schedule.decision <- NA
for (i in 1:nrow(df)){
  if (!is.na(df[i, "sp.schedule.decision.loc"])){
    df[i, "spouse.schedule.decision"] <- 
      df[i, as.character(df[i, "sp.schedule.decision.loc"])]
  }
  else{}
}
df[which(is.na(df$spouse.schedule.decision) & 
           !is.na(df$spouse.schedule.decision.out)), "spouse.schedule.decision"] <- 
  df[which(is.na(df$spouse.schedule.decision) & 
             !is.na(df$spouse.schedule.decision.out)), "spouse.schedule.decision.out"]

df$spouse.schedule.notice <- NA
for (i in 1:nrow(df)){
  if (!is.na(df[i, "sp.schedule.notice.loc"])){
    df[i, "spouse.schedule.notice"] <- 
      df[i, as.character(df[i, "sp.schedule.notice.loc"])]
  }
  else{}
}
df[which(is.na(df$spouse.schedule.notice) & 
           !is.na(df$spouse.schedule.notice.out)), "spouse.schedule.notice"] <- 
  df[which(is.na(df$spouse.schedule.notice) & 
             !is.na(df$spouse.schedule.notice.out)), "spouse.schedule.notice.out"]

## indicate if R has a spouse/cohabiting partner
df$spouse.exist <- 0
df[which(!is.na(df$relation)), "spouse.exist"] <- 1

## locate only marriage
df$relation <- NA
for (i in seq(1,8,1)){
  member <- paste0("hh.relation.", i)
  df[which(df[, member] <= 2), "relation"] <- i
}
df$marriage <- 0
df[which(!is.na(df$relation)), "marriage"] <- 1

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
###### Children (existence and number) ######
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#

## locate children
df$relation <- NA
for (i in seq(1,8,1)){
  member <- paste0("hh.relation.", i)
  df[which(df[, member] >= 49 & df[, member] <= 54), "relation"] <- i
} ## include step children and adoptive children

## indicate if R has a child
df$child.exist <- 0
df[which(!is.na(df$relation)), "child.exist"] <- 1

## number of children
df[, c("child1", "child2", "child3",
       "child4", "child5", "child6",
       "child7", "child8", "child9",
       "child10", "child11")][is.na(df[, c("child1", "child2", "child3",
                                           "child4", "child5", "child6",
                                           "child7", "child8", "child9",
                                           "child10", "child11")])] <- 9999
df$nchild <- as.numeric(df$year - df$child1 >= 0) +
  as.numeric(df$year - df$child2 >= 0) +
  as.numeric(df$year - df$child3 >= 0) +
  as.numeric(df$year - df$child4 >= 0) +
  as.numeric(df$year - df$child5 >= 0) +
  as.numeric(df$year - df$child6 >= 0) +
  as.numeric(df$year - df$child7 >= 0) +
  as.numeric(df$year - df$child8 >= 0) +
  as.numeric(df$year - df$child9 >= 0) +
  as.numeric(df$year - df$child10 >= 0) +
  as.numeric(df$year - df$child11 >= 0)

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
###### R and Spouse Income ######
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#

## create income
df[which(is.na(df$income) & df$est.income == 1), "income"] <- 2500
df[which(is.na(df$income) & df$est.income == 2), "income"] <- 7500
df[which(is.na(df$income) & df$est.income == 3), "income"] <- 17500
df[which(is.na(df$income) & df$est.income == 4), "income"] <- 37500
df[which(is.na(df$income) & df$est.income == 5), "income"] <- 75000
df[which(is.na(df$income) & df$est.income == 6), "income"] <- 175000
df[which(is.na(df$income) & df$est.income == 7), "income"] <- 250000
df$income <- log(df$income + 1)

## create spousal income
df[which(is.na(df$spouse.income) & df$est.spouse.income == 1), "spouse.income"] <- 2500
df[which(is.na(df$spouse.income) & df$est.spouse.income == 2), "spouse.income"] <- 7500
df[which(is.na(df$spouse.income) & df$est.spouse.income == 3), "spouse.income"] <- 17500
df[which(is.na(df$spouse.income) & df$est.spouse.income == 4), "spouse.income"] <- 37500
df[which(is.na(df$spouse.income) & df$est.spouse.income == 5), "spouse.income"] <- 75000
df[which(is.na(df$spouse.income) & df$est.spouse.income == 6), "spouse.income"] <- 175000
df[which(is.na(df$spouse.income) & df$est.spouse.income == 7), "spouse.income"] <- 250000
df$spouse.income <- log(df$spouse.income + 1)

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
##### Health Indicators #####
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#

## adjust mental & general health variables to be in the same direction
## lower values mean worse health
df$ghealth <- 6-df$ghealth
df$emotion <- 6-df$emotion
df$mental.pc.index <- df$emotion

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~
###### Precarious work schedule ######
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~

## because info. about precarious work arrangement is only available since 2011
## the data is restricted to the waves after 2011 (2011, 2013, 2015, 2017 and 2019)
## preserve 2010 to deal with attrition prediction later
df <- df %>% filter(year >= 2009)

## adjust schedule notice for 2017 and 2019 survey to make it consistent with other years
df[which(df$schedule.notice.A <= 12 & df$year == 2017), "schedule.notice.A"] <- 1
df[which(df$schedule.notice.A == 13 & df$year == 2017), "schedule.notice.A"] <- 2
df[which(df$schedule.notice.A == 14 & df$year == 2017), "schedule.notice.A"] <- 4
df[which(df$schedule.notice.A == 15 & df$year == 2017), "schedule.notice.A"] <- 5

df[which(df$schedule.notice.B <= 12 & df$year == 2017), "schedule.notice.B"] <- 1
df[which(df$schedule.notice.B == 13 & df$year == 2017), "schedule.notice.B"] <- 2
df[which(df$schedule.notice.B == 14 & df$year == 2017), "schedule.notice.B"] <- 4
df[which(df$schedule.notice.B == 15 & df$year == 2017), "schedule.notice.B"] <- 5

df[which(df$schedule.notice.C <= 12 & df$year == 2017), "schedule.notice.C"] <- 1
df[which(df$schedule.notice.C == 13 & df$year == 2017), "schedule.notice.C"] <- 2
df[which(df$schedule.notice.C == 14 & df$year == 2017), "schedule.notice.C"] <- 4
df[which(df$schedule.notice.C == 15 & df$year == 2017), "schedule.notice.C"] <- 5

df[which(df$schedule.notice.D <= 12 & df$year == 2017), "schedule.notice.D"] <- 1
df[which(df$schedule.notice.D == 13 & df$year == 2017), "schedule.notice.D"] <- 2
df[which(df$schedule.notice.D == 14 & df$year == 2017), "schedule.notice.D"] <- 4
df[which(df$schedule.notice.D == 15 & df$year == 2017), "schedule.notice.D"] <- 5

df[which(df$spouse.schedule.notice <= 12 & df$year >= 2017), "spouse.schedule.notice"] <- 1
df[which(df$spouse.schedule.notice == 13 & df$year >= 2017), "spouse.schedule.notice"] <- 2
df[which(df$spouse.schedule.notice == 14 & df$year >= 2017), "spouse.schedule.notice"] <- 4
df[which(df$spouse.schedule.notice == 15 & df$year >= 2017), "spouse.schedule.notice"] <- 5

df[which(df$spouse.schedule.decision == 11 & df$year == 2017), "spouse.schedule.decision"] <- 1
df[which(df$spouse.schedule.decision == 12 & df$year == 2017), "spouse.schedule.decision"] <- 2
df[which(df$spouse.schedule.decision == 13 & df$year == 2017), "spouse.schedule.decision"] <- 3
df[which(df$spouse.schedule.decision == 14 & df$year == 2017), "spouse.schedule.decision"] <- 4
df[which(df$spouse.schedule.decision == 15 & df$year == 2017), "spouse.schedule.decision"] <- 5

## create control and treatment
df$precarious <- NA
## 2011, 2013, 2015, 2017
df[which((!is.na(df$fewest.hours.A) | !is.na(df$fewest.hours.B) | 
            !is.na(df$fewest.hours.C) | !is.na(df$fewest.hours.D)) & 
           ## fewest hours worked in a week last month not NA
           (!is.na(df$most.hours.A) | !is.na(df$most.hours.B) | 
              !is.na(df$most.hours.C) | !is.na(df$most.hours.D)) & 
           ## most hours worked in a week last month not NA
           (!is.na(df$reg.work.hours)) & 
           (!is.na(df$schedule.decision.A) | !is.na(df$schedule.decision.B) | 
              !is.na(df$schedule.decision.C) | !is.na(df$schedule.decision.D)) & 
           ## schedule decision (voluntary or not) not NA
           (!is.na(df$schedule.notice.A) | !is.na(df$schedule.notice.B) | 
              !is.na(df$schedule.notice.C) | !is.na(df$schedule.notice.D)) &
           ## schedule notice in advance not NA
           (df$year <= 2017)
), "precarious"] <- 0 ## this procedure also drops unemployed Rs

## 2019
df[which((!is.na(df$fewest.hours.A) | !is.na(df$fewest.hours.B) | 
            !is.na(df$fewest.hours.C) | !is.na(df$fewest.hours.D)) & 
           ## fewest hours worked in a week last month not NA
           (!is.na(df$most.hours.A) | !is.na(df$most.hours.B) | 
              !is.na(df$most.hours.C) | !is.na(df$most.hours.D)) & 
           ## most hours worked in a week last month not NA
           (!is.na(df$reg.work.hours)) &
           (!is.na(df$schedule.notice.A) | !is.na(df$schedule.notice.B) | 
              !is.na(df$schedule.notice.C) | !is.na(df$schedule.notice.D)) &
           ## schedule notice in advance not NA
           (df$year == 2019)
), "precarious"] <- 0 ## this procedure also drops unemployed Rs

## create universal fewest hours
df[which(df$precarious == 0), "fewest.hours"] <- rowMins(as.matrix(
  cbind(
    df[which(df$precarious == 0), "fewest.hours.A"], 
    df[which(df$precarious == 0), "fewest.hours.B"],
    df[which(df$precarious == 0), "fewest.hours.C"], 
    df[which(df$precarious == 0), "fewest.hours.D"])
), na.rm=T)
## create universal most hours
df[which(df$precarious == 0), "most.hours"] <- rowMaxs(
  as.matrix(
    cbind(
  df[which(df$precarious == 0), "most.hours.A"], 
  df[which(df$precarious == 0), "most.hours.B"],
  df[which(df$precarious == 0), "most.hours.C"], 
  df[which(df$precarious == 0), "most.hours.D"])
  ), na.rm=T)

## create 0 for all indicators
df[which(df$precarious == 0), "fluctuation"] <- 0
df[which(df$precarious == 0), "predictability"] <- 0
df[which(df$precarious == 0), "control"] <- 0

## identify schedule fluctuation if R's most hours != fewest hours != regular hours
## and (regular-fewest)/regular>=25%
df[which(df$reg.work.hours!=0),"pctloss"] <- 
  (df[which(df$reg.work.hours!=0),"reg.work.hours"] -
  df[which(df$reg.work.hours!=0),"fewest.hours"])/df[which(df$reg.work.hours!=0),"reg.work.hours"]
df[which((df$precarious == 0) & (df$fewest.hours != df$reg.work.hours) &
           (df$fewest.hours != df$most.hours) & (df$pctloss>=0.25)), "fluctuation"] <- 1

## identify schedule unpredictability if R's schedule notice is within 1 week
df[which((df$precarious == 0) & (rowMaxs(cbind(df$schedule.notice.A,
                                               df$schedule.notice.B,
                                               df$schedule.notice.C,
                                               df$schedule.notice.D), na.rm=T)==1)), "predictability"] <- 1

df[which(df$precarious == 0), "schedule.notice"] <- 
  rowMaxs(cbind(df[which(df$precarious == 0),]$schedule.notice.A,
                df[which(df$precarious == 0),]$schedule.notice.B,
                df[which(df$precarious == 0),]$schedule.notice.C,
                df[which(df$precarious == 0),]$schedule.notice.D), na.rm=T)

## identify (inability of) schedule control if R's schedule input is zero or few
df[which(rowMins(cbind(df$schedule.decision.A, 
                       df$schedule.decision.B, 
                       df$schedule.decision.C, 
                       df$schedule.decision.D), na.rm = T) == 1 |
           rowMins(cbind(df$schedule.decision.A, 
                         df$schedule.decision.B, 
                         df$schedule.decision.C, 
                         df$schedule.decision.D), na.rm = T) == 5),"control"] <- 1

## impute 2019's schedule decision by linear extrapolation
df <- df %>%
  group_by(ID) %>%
  group_modify(~ {
    dat <- .x
    ## drop NA control
    dat_non_na <- dat %>% filter(!is.na(control))
    ## if fewer than 2 points, cannot extrapolate
    if (nrow(dat_non_na) < 2) return(dat)
    ## fit linear model
    fit <- lm(control ~ year, data = dat_non_na)
    ## if 2019 exists and is NA, extrapolate
    dat <- dat %>%
      mutate(control = if_else(
        year == 2019 & is.na(control),
        control[year==2017],
        control
      ))
    dat <- dat %>%
      mutate(control = case_when(
        year == 2019 & control < 0.5 ~ 0,
        year == 2019 & control >= 0.5 ~ 1,
        .default = control
      ))

    return(dat)
  }) %>%
  ungroup()

## drop military employment
df <- df %>% filter(military != 1 | is.na(military))

## drop self-employment
df <- df %>% filter(self.employ != 1 | is.na(self.employ))

## recode schedule decision to prepare for PCA precarious
df[which(df$schedule.decision.A==5),"schedule.decision.A"] <- 0
df[which(df$schedule.decision.B==5),"schedule.decision.B"] <- 0
df[which(df$schedule.decision.C==5),"schedule.decision.C"] <- 0
df[which(df$schedule.decision.D==5),"schedule.decision.D"] <- 0

df[which(df$precarious == 0), "schedule.decision"] <- 
  rowMaxs(cbind(df[which(df$precarious == 0),]$schedule.decision.A,
                df[which(df$precarious == 0),]$schedule.decision.B,
                df[which(df$precarious == 0),]$schedule.decision.C,
                df[which(df$precarious == 0),]$schedule.decision.D), na.rm=T)

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
###### Synthesize Precarious work schedule ######
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#

## create a 0-3 scale of precarious work schedule - summative index
df[which(df$precarious == 0), "precarious"] <- 
  df[which(df$precarious == 0), "fluctuation"] +
  df[which(df$precarious == 0), "predictability"] +
  df[which(df$precarious == 0), "control"]

## create precarious dummies
df[which(df$precarious<=1),"precarious_dummy"] <- 0
df[which(df$precarious>=2),"precarious_dummy"] <- 1

## IRT model
IRTmodel <- ltm(formula = df[which(!is.na(df$precarious)),c("fluctuation","predictability","control")] ~ z1, IRT.param = TRUE)
irtsyn <- factor.scores.ltm(IRTmodel)$score.dat
irtsyn <- irtsyn %>% dplyr::select(fluctuation,predictability,control,z1) %>%
  rename(Lz=z1)
## merge with original df and create a synthesized measurement
df <- merge(df, irtsyn, by=c("fluctuation","predictability","control"), all.x=T)

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~
###### Spouse Precarity ######
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~

## identify if the spouse is also in precarity
df$spouse.precarious <- 0

df[which(df$spouse.precarious == 0), "spouse.predictability"] <- 0
df[which(df$spouse.precarious == 0 & df$spouse.schedule.notice == 1), "spouse.predictability"] <- 1
df[which(df$spouse.precarious == 0), "spouse.control"] <- 0
df[which(df$spouse.precarious == 0 & df$spouse.schedule.decision == 1), "spouse.control"] <- 1
df[which(df$spouse.precarious == 0 & df$spouse.schedule.decision == 2), "spouse.control"] <- 1
df[which(df$spouse.precarious == 0 & df$spouse.schedule.decision == 5), "spouse.control"] <- 1

df[which(df$spouse.precarious == 0), "spouse.precarious"] <- 
  df[which(df$spouse.precarious == 0), "spouse.predictability"] + 
  df[which(df$spouse.precarious == 0), "spouse.control"]

## create a dummy
df[which(df$spouse.precarious<=1), "spouse.precarious"] <- 0
df[which(df$spouse.precarious==2), "spouse.precarious"] <- 1

#~#~#~#~#~#~#~#~#~#~#~#~
###### Industries ######
#~#~#~#~#~#~#~#~#~#~#~#~

## create industries for R using 2020 census 4-digit
df[which(df$ind >= 170 & df$ind <= 290), "industry"] <- 1 ## agriculture, forestry and fisheries
df[which(df$ind >= 370 & df$ind <= 490), "industry"] <- 2 ## mining
df[which(df$ind >= 570 & df$ind <= 690), "industry"] <- 3 ## utilities
df[which(df$ind == 770), "industry"] <- 4 ## construction
df[which(df$ind >= 1070 & df$ind <= 3990), "industry"] <- 5 ## manufacturing
df[which(df$ind >= 4070 & df$ind <= 4590), "industry"] <- 6 ## wholesale trade
df[which(df$ind >= 4670 & df$ind <= 5790), "industry"] <- 7 ## retail trade
df[which(df$ind >= 5890 & df$ind <= 5890), "industry"] <- 8 ## art, entertainment and recreation services
df[which(df$ind >= 6070 & df$ind <= 6390), "industry"] <- 9 ## transportation and warehousing
df[which(df$ind >= 6470 & df$ind <= 6780), "industry"] <- 10 ## information and communication
df[which(df$ind >= 6870 & df$ind <= 7190), "industry"] <- 11 ## finance, insurance, and real estate
df[which(df$ind >= 7270 & df$ind <= 7790), "industry"] <- 12 ## professional and related services
df[which(df$ind >= 7860 & df$ind <= 8470), "industry"] <- 13 ## educational, health, and social services
df[which(df$ind >= 8560 & df$ind <= 8690), "industry"] <- 14 ## entertainment, accomodations, and food services
df[which(df$ind >= 8770 & df$ind <= 9290), "industry"] <- 15 ## other services
df[which(df$ind >= 9370 & df$ind <= 9590), "industry"] <- 16 ## public administration
df[which(df$ind >= 9670 & df$ind <= 9890), "industry"] <- 17 ## military
df[which(df$ind >= 9950 & df$ind <= 9990), "industry"] <- 18 ## ACS special codes

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~
###### Create Occupation Groups ######
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~
df <-
  df %>% mutate(
    occupation = case_when(occ>=10 & occ<=430 ~ "executive",
                           occ>=500 & occ<=950 ~ "management",
                           occ>=1000 & occ<=1240 ~ "mathematical",
                           occ>=1300 & occ<=1530 ~ "engineers",
                           occ>=1540 & occ<=1560 ~ "engineering",
                           occ>=1600 & occ<=1760 ~ "physical",
                           occ>=1800 & occ<=1860 ~ "social",
                           occ>=1900 & occ<=1960 ~ "life",
                           occ>=2000 & occ<=2060 ~ "counselor",
                           occ>=2100 & occ<=2150 ~ "lawyer",
                           occ>=2200 & occ<=2340 ~ "teacher",
                           occ>=2400 & occ<=2550 ~ "education",
                           occ>=2600 & occ<=2760 ~ "entertainer",
                           occ>=2800 & occ<=2960 ~ "media",
                           occ>=3000 & occ<=3260 ~ "health_giagnosis",
                           occ>=3300 & occ<=3650 ~ "health_care",
                           occ>=3700 & occ<=3950 ~ "protective",
                           occ>=4000 & occ<=4160 ~ "food",
                           occ>=4200 & occ<=4250 ~ "cleaning",
                           occ>=4300 & occ<=4430 ~ "entertainment",
                           occ==4460 ~ "funeral",
                           occ>=4500 & occ<=4650 ~ "personal",
                           occ>=4700 & occ<=4960 ~ "sales",
                           occ>=5000 & occ<=5930 ~ "office",
                           occ>=6000 & occ<=6130 ~ "farming",
                           occ>=6200 & occ<=6940 ~ "construction",
                           occ>=7000 & occ<=7620 ~ "installation",
                           occ>=7700 & occ<=7750 ~ "production",
                           occ>=7800 & occ<=7850 ~ "food",
                           occ>=7900 & occ<=8960 ~ "setter",
                           occ>=9000 & occ<=9750 ~ "transportation",
                           occ>=9800 & occ<=9840 ~ "military",
                           occ>=9950 & occ<=9990 ~ "ACS"
                           
    ))

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
###### Attrition Weights ######
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#

## create weight
source("codes/01 prepare/IPAW.R")

## preserve weight
df[which(is.na(df$sw)),"sw"] <- 1

## merge with original person weight
weight <- read.csv("data cleaned/weight.csv")

weight <- weight %>% rename(weight_1997 = R1236201,
                            weight_1998 = R2600401,
                            weight_1999 = R3958501,
                            weight_2000 = R5510700,
                            weight_2001 = R7274300,
                            weight_2002 = S1598200,
                            weight_2003 = S2067100,
                            weight_2004 = S3861700,
                            weight_2005 = S5444300,
                            weight_2006 = S7545600,
                            weight_2007 = T0042200,
                            weight_2008 = T2022600,
                            weight_2009 = T3613400,
                            weight_2010 = T5213300,
                            weight_2011 = T6665100,
                            weight_2013 = T8136000,
                            weight_2015 = U0017200,
                            weight_2017 = U1855500,
                            weight_2019 = U3455600,
                            ID = R0000100) %>%
  dplyr::select(-c("R1235800"))

## transform the format from wide to long, allowing unbalance
dfL <- melt(weight, id.vars="ID")
dfL <- cbind(dfL, colsplit(dfL$variable, "_", c("var", "year")))
weight <- dcast(dfL, ID + year ~ var, value.var="value")
rm(dfL)

## merge with df
weight <- weight[which(weight$year==1997), ]
weight <- weight %>% dplyr::select(-c("year"))
weight$weight <- weight$weight/10000
df <- merge(df, weight, by="ID")
df[which(is.na(df$hourly)),"hourly"] <- 0

## readjust weight
df$sw <- df$sw*df$weight

## drop unused columns
df <- df[, -which(names(df) %in% c("T8116500","T8117500","T8123801","T8123901",
                 "T8124001","T8124101","T8124201","T8124301",
                 "T8124401","T8124501","T8124801","T9138500",
                 "T9139400","U0002001","U0002101","U0002201",
                 "U0002301","U0002401","U0002501","U0002601",
                 "U0002701","U0002801","U0002901","U0003001",
                 "U1132900","U1133800","U1725100","U1726000",
                 "U1838701","U1838801","U1838901","U1839001",
                 "U1839101","U1839201","U1839301","U1839401",
                 "U1839501","U1839601","U1839701","U3438101",
                 "U3438201","U3438301","U3438401","U3438501",
                 "U3438601","U3438801","U3438901","U3439001",
                 "U3439101","T8124601","T8124701","U3438701"))]

## remove residual datasets
rm(IRTmodel,pca,i,member,weight)

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~
###### Create Variable Lags ######
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~

df <-
  df %>%
  group_by(ID) %>%
  tidyr::complete(year = min(year):max(year)) %>% 
  dplyr::mutate(lag.precarious = if_else(year - lag(year, 2) == 2, 
                                         dplyr::lag(precarious, 2), 
                                  NA_real_)) %>% 
  complete(year = min(year):max(year)) %>% 
  dplyr::mutate(lag.Lz = if_else(year - lag(year, 2) == 2, 
                                 dplyr::lag(Lz, 2), 
                          NA_real_)) %>%
  complete(year = min(year):max(year)) %>% 
  dplyr::mutate(lag.ghealth = if_else(year - lag(year, 2) == 2, 
                                      dplyr::lag(ghealth, 2), 
                          NA_real_)) %>%
  complete(year = min(year):max(year)) %>% 
  dplyr::mutate(lag.mental.pc.index = if_else(year - lag(year, 2) == 2, 
                                              dplyr::lag(mental.pc.index, 2), 
                               NA_real_)) %>% 
  dplyr::filter(year==2011|year==2013|year==2015|year==2017|year==2019)
df <- df %>% filter(!is.na(birth.year))

df %>%
  group_by(year) %>%
  summarize(p0 = sum(precarious==0,na.rm=T),
            p1 = sum(precarious==1,na.rm=T),
            p2 = sum(precarious==2,na.rm=T),
            p3 = sum(precarious==3,na.rm=T),
            total = sum(!is.na(precarious))) %>%
  mutate(p0=p0/total,
         p1=p1/total,
         p2=p2/total,
         p3=p3/total)

#~#~#~#~#~#~#~#~#~#~#~#~#~
###### Inspect Data ######
#~#~#~#~#~#~#~#~#~#~#~#~#~

## Table 2 - descriptive
df %>% filter(year>=2011&!is.na(industry)&!is.na(precarious_dummy)) %>%
  group_by(industry) %>%
  summarize(total = n()/18618,
            female_prp = weighted.mean(sex-1,w=sw,na.rm=T),
            precarious = weighted.mean(precarious_dummy,w=sw,na.rm=T),
            ghealth_pre = weighted.mean(ghealth[precarious_dummy==1],w=sw[precarious_dummy==1],na.rm=T),
            mental_pre = weighted.mean(mental.pc.index[precarious_dummy==1],w=sw[precarious_dummy==1],na.rm=T),
            nonprecarious = 1-weighted.mean(precarious_dummy,w=sw,na.rm=T),
            ghealth_nonpre = weighted.mean(ghealth[precarious_dummy==0],w=sw[precarious_dummy==0],na.rm=T),
            mental_nonpre = weighted.mean(mental.pc.index[precarious_dummy==0],w=sw[precarious_dummy==0],na.rm=T)) %>%
  mutate(delta_ghealth = ghealth_pre - ghealth_nonpre,
         delta_mental = mental_pre - mental_nonpre) %>%
  ungroup() %>%
  dplyr::select(-c("ghealth_pre","ghealth_nonpre","mental_pre","mental_nonpre","nonprecarious")) %>%
  filter(!is.na(delta_ghealth)&industry!=17) %>%
  arrange(desc(precarious))

## drop duplicates
df %>% filter(year>=2011&!is.na(industry)&!is.na(precarious_dummy)&!is.na(mental.pc.index)) %>%
  distinct(ID)

## Table 2 - t.test
industry <- df %>% filter(year>=2011&!is.na(industry)&!is.na(precarious_dummy)) %>%
  group_by(industry) %>%
  summarize(precarious = weighted.mean(precarious_dummy,w=sw,na.rm=T)) %>%
  ungroup() %>%
  arrange(desc(precarious)) %>%
  as.data.frame()
industry <- industry[,1]
ttest <- data.frame(industry = industry[1:16],
                    tvalue = NA)
for (i in industry[1:16]){
  ## t test 
  ttest[which(ttest$industry == i), "tvalue"] <-
    try({t.test(df[which(df$year>=2011&df$industry==i&df$precarious_dummy==0),"mental.pc.index"],
                df[which(df$year>=2011&df$industry==i&df$precarious_dummy==1),"mental.pc.index"])$p.value})
}
print(ttest)

## Table 3 descriptives of variables by precarious status
df[which(df$urban==2),"urban"] <- 0 ## impute missing urban by rural
dummy_cols(df[,c("sex","age","race","region","income",
                 "union","spouse.exist","child.exist","spouse.precarious",
                 "urban","education","hourly","precarious_dummy",
                 "ghealth","mental.pc.index",
                 "fluctuation","predictability","control")],
           c("sex","race","region")) %>%
  ungroup() %>%
  filter(!is.na(precarious_dummy)) %>%
  filter(precarious_dummy==1) %>%
  dplyr::select(sex,age,race_1,race_2,race_3,race_4,
                region_1,region_2,region_3,region_4,
                income,union,spouse.exist,child.exist,
                spouse.precarious,urban,education,hourly,
                ghealth,mental.pc.index,fluctuation,
                predictability,control) %>%
  describe(fast=T) %>%
  print(digits=3)

## t test
for (v in c("sex","age","race_4","race_1","race_2","race_3",
            "region_1","region_2","region_3","region_4","income",
            "union","hourly","spouse.exist","child.exist","spouse.precarious",
            "urban","education",
            "ghealth","mental.pc.index")){
  dat <-
    dummy_cols(df[,c("sex","age","race","region","income",
                     "union","spouse.exist","child.exist","spouse.precarious",
                     "urban","education","hourly","precarious_dummy",
                     "ghealth","mental.pc.index")],
               c("sex","race","region"))
  
  print(
    t.test(dat[which(dat$precarious_dummy==1),v],
           dat[which(dat$precarious_dummy==0),v])$p.value
  )
}

## table 4 descriptive by gender
dummy_cols(df[,c("sex","age","race","region","income",
                 "union","spouse.exist","child.exist","spouse.precarious",
                 "urban","education","hourly","precarious_dummy",
                 "ghealth","mental.pc.index",
                 "fluctuation","predictability","control")],
           c("sex","race","region")) %>%
  ungroup() %>%
  dplyr::filter(!is.na(precarious_dummy)) %>%
  dplyr::filter(sex==2) %>%
  dplyr::select(sex,age,race_1,race_2,race_3,race_4,
                region_1,region_2,region_3,region_4,
                income,union,spouse.exist,child.exist,
                spouse.precarious,urban,education,hourly,
                ghealth,mental.pc.index,fluctuation,
                predictability,control) %>%
  describe(fast=T) %>%
  print(digits=3)

## t test
for (v in c("age","race_4","race_1","race_2","race_3",
            "region_1","region_2","region_3","region_4","income",
            "union","hourly","spouse.exist","child.exist","spouse.precarious",
            "urban","education",
            "ghealth","mental.pc.index",
            "fluctuation","predictability","control")){
  dat <-
    dummy_cols(df[!is.na(df$precarious_dummy),
                  c("sex","age","race","region","income",
                     "union","spouse.exist","child.exist","spouse.precarious",
                     "urban","education","hourly","precarious_dummy",
                     "ghealth","mental.pc.index",
                     "fluctuation","predictability","control")],
               c("sex","race","region"))
  
  print(
    t.test(dat[which(dat$sex==1),v],
           dat[which(dat$sex==2),v])$p.value
  )
}

## descriptive table 1
df %>%
  filter(!is.na(precarious_dummy)) %>%
  group_by(sex,precarious) %>%
  summarize(mean=mean(Lz),
            n=n())

#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#
###### Standardize, Scale and Center Variables ######
#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#

## standardize, scale, and center
df_st <-
  cbind(df$ID,df$year, df$sw, df$race,df$sex, df$industry, df$occupation,
        scale(df[,c("ghealth","mental.pc.index", "precarious","education",
                    "income","spouse.exist", "child.exist",
                    "urban","union","spouse.precarious",
                    "injill","Lz","lag.ghealth","lag.precarious",
                    "lag.Lz","lag.mental.pc.index",
                    "precarious_dummy","region",
                    "age","marriage","nchild","hourly")],
              center=TRUE, scale=TRUE))
df_st <- as.data.frame(df_st)
colnames(df_st)[1:7] <- c("ID", "year", "sw", "race","sex","industry","occupation")

#~#~#~#~#~#~#~#~#~#~#~
### Export Dataset ###
#~#~#~#~#~#~#~#~#~#~#~

write.csv(df_st,"/Users/wenhao/Library/CloudStorage/Dropbox/RA Linsey/github_share/data cleaned/master_01.csv",
          row.names = FALSE)
