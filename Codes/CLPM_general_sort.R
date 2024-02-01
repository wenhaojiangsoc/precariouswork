rm(list = ls())

## load packages
library(dpm)
library(fastDummies)
library(dplyr)

## read cleaned data
## setwd("~/Dropbox/RA Linsey/NLSY97/precarious/Cleaned Data")
setwd("/scratch/wj2068/precarious")
df <- read.csv("master_01.csv")
df <- df %>% dplyr::select(-c(X))

## within-industry change
df <- df %>%
  group_by(industry) %>%
  mutate(education = education - mean(education,na.rm=T),
         income = income - mean(income,na.rm=T),
         spouse.precarious = spouse.precarious - mean(spouse.precarious,na.rm=T),
         child.exist = child.exist - mean(child.exist,na.rm=T),
         urban = urban - mean(urban,na.rm=T),
         union = union - mean(union,na.rm=T)
  )

## within-occupation change
df <- df %>%
  group_by(occupation) %>%
  mutate(education = education - mean(education,na.rm=T),
         income = income - mean(income,na.rm=T),
         spouse.precarious = spouse.precarious - mean(spouse.precarious,na.rm=T),
         child.exist = child.exist - mean(child.exist,na.rm=T),
         urban = urban - mean(urban,na.rm=T),
         union = union - mean(union,na.rm=T)
  )

df <- df %>% ungroup()

## transform the data to be analyzed by the dpm package
df_dpm <- df
df_dpm[which(df_dpm$year==2011),"year"]<-1
df_dpm[which(df_dpm$year==2013),"year"]<-2
df_dpm[which(df_dpm$year==2015),"year"]<-3
df_dpm[which(df_dpm$year==2017),"year"]<-4
df_dpm[which(df_dpm$year==2019),"year"]<-5
df_dpm <- panel_data(df_dpm, id = ID, wave = year)

## create race dummies
df_dpm$race_black <- 0
df_dpm[which(df_dpm$race == 1), "race_black"] <- 1
df_dpm$race_hispanic <- 0
df_dpm[which(df_dpm$race == 2), "race_hispanic"] <- 1
df_dpm$race_mixed <- 0
df_dpm[which(df_dpm$race == 3), "race_mixed"] <- 1
df_dpm$race_white <- 0
df_dpm[which(df_dpm$race == 4), "race_white"] <- 1

## create controls, including dummies for industry but not occupation
controls <-
  c("lag(education)","education",
    "lag(income)","income",
    "lag(spouse.precarious)","spouse.precarious",
    "lag(child.exist)","child.exist",
    "lag(urban)","urban",
    "lag(union)","union")

######################################
############General Health############
######################################

#########################
###Precarious ~ Health###
#########################

## general health ~ summative index
treatment <-
  c("pre(lag(ghealth))", "pre(ghealth)")
variables <- c(treatment, controls)

## summative index ~ general health
try({
  ## full
  ghealth_1 <- dpm(
                  as.formula(paste("precarious ~ ",
                                   paste(variables, collapse = " + "),
                                   "| sex + race_black + race_hispanic + race_mixed")),
                  data = df_dpm,
                  error.inv = FALSE, information = "observed", missing = "fiml",
                  fixed.effects = TRUE, weights = sw
                )
  ## main results
  summary(ghealth_1)
},silent=T)

lav_summary(ghealth_1)

try({
  ## male
  ghealth_1 <- dpm(
                  as.formula(paste("precarious ~ ",
                                   paste(variables, collapse = " + "),
                                   "| race_black + race_hispanic + race_mixed")),
                  data = df_dpm[which(df_dpm$sex==1),],
                  error.inv = FALSE, information = "observed", missing = "fiml",
                  fixed.effects = TRUE, weights = sw
                )
  ## main results
  summary(ghealth_1)
},silent=T)

lav_summary(ghealth_1)

try({
  ## female
  ghealth_1 <- dpm(
                  as.formula(paste("precarious ~ ",
                                   paste(variables, collapse = " + "),
                                   "| race_black + race_hispanic + race_mixed")),
                  data = df_dpm[which(df_dpm$sex==2),],
                  error.inv = FALSE, information = "observed", missing = "fiml",
                  fixed.effects = TRUE, weights = sw
                )
  ## main results
  summary(ghealth_1)
},silent=T)

lav_summary(ghealth_1)

## IRT ~ general health
treatment <-
  c("pre(lag(ghealth))", "pre(ghealth)")
variables <- c(treatment, controls)

try({
  ## full
  ghealth_1_irt <- dpm(
                      as.formula(paste("Lz ~ ",
                                       paste(variables, collapse = " + "),
                                       "| sex + race_black + race_hispanic + race_mixed")),
                      data = df_dpm,
                      error.inv = FALSE, information = "observed", missing = "fiml",
                      fixed.effects = TRUE, weights = sw
                    )
  ## main results
  summary(ghealth_1_irt)
},silent=T)
lav_summary(ghealth_1_irt)

try({
  ## male
  ghealth_1_irt <- dpm(
                      as.formula(paste("Lz ~ ",
                                       paste(variables, collapse = " + "),
                                       "| race_black + race_hispanic + race_mixed")),
                      data = df_dpm[which(df_dpm$sex==1),],
                      error.inv = FALSE, information = "observed", missing = "fiml",
                      fixed.effects = TRUE, weights = sw
                    )
  ## main results
  summary(ghealth_1_irt)
},silent=T)
lav_summary(ghealth_1_irt)

try({
  ## female
  ghealth_1_irt <- dpm(
                      as.formula(paste("Lz ~ ",
                                       paste(variables, collapse = " + "),
                                       "| race_black + race_hispanic + race_mixed")),
                      data = df_dpm[which(df_dpm$sex==2),],
                      error.inv = FALSE, information = "observed", missing = "fiml",
                      fixed.effects = TRUE, weights = sw
                    )
  ## main results
  summary(ghealth_1_irt)
},silent=T)
lav_summary(ghealth_1_irt)

