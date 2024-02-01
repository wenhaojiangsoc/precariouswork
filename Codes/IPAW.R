library(stargazer)
########Attrition########

## identify attrition (non-interview)
dim(df[which(is.na(df$month)),])[1]/dim(df)[1]

## select covariates in prediction
dat <- df %>% dplyr::select(ID, year, education, income, industry, occupation, race, hourly,
                     region, sex, union, urban, injill, spouse.precarious, spouse.exist, child.exist,age,month,
                     Lz) %>%
  arrange(ID,year)
dat[which(dat$education==95),"education"] <- NA
dat[which(is.na(dat$hourly)),"hourly"] <- 0

## lag variables from the last observed covariates
dat <- dat[which((!is.na(dat$month)) |
                 (is.na(dat$month & dat$year==2019)) ), ]

lag.dat <- dat %>% group_by(ID) %>% arrange(year) %>% mutate(education = lag(education),
                                                             income = lag(income),
                                                             industry = lag(industry),
                                                             occupation = lag(occupation),
                                                             region = lag(region),
                                                             spouse.precarious = lag(spouse.precarious),
                                                             union = lag(union),
                                                             urban = lag(urban),
                                                             injill = lag(injill),
                                                             spouse.exist = lag(spouse.exist),
                                                             child.exist = lag(child.exist),
                                                             hourly = lag(hourly),
                                                             age = lag(age),
                                                             lag.year = lag(year)) %>% ungroup()

lag.dat <- lag.dat %>% filter(year>2010)

## create non-interview indicator
lag.dat[which(!is.na(lag.dat$month)),"attrition"] <- 1
lag.dat[which(is.na(lag.dat$month)),"attrition"] <- 0

## fit the attrition model with all covariates
model <- glm(attrition ~ education + income + injill + factor(industry) +
               factor(spouse.precarious) + factor(occupation) + factor(race) + factor(region) + factor(hourly) +
               factor(sex) + factor(union) + factor(urban) + factor(spouse.exist) + factor(child.exist) +
               age, data = lag.dat, family = "binomial")
summary(
  model
)

## predict from the model
t <- predict(model,lag.dat,type="response")
t <- as.vector(t)
lag.dat$attrition <- t

## fit the attrition model with baseline variables
model <- glm(attrition ~ factor(race) + factor(sex), data = lag.dat, family = "binomial")

## predict from the model
t <- predict(model,lag.dat,type="response")
t <- as.vector(t)
lag.dat$stable_attrition <- t

## stabilize weight
lag.dat$sw_attrition <- lag.dat$stable_attrition/lag.dat$attrition
lag.dat <- lag.dat %>% dplyr::select(ID,year,sw_attrition)

## merge with df
df <- merge(df,lag.dat,by=c("ID","year"),all.x=T)

########Non-Response########

## identify non-response (of precarity)
dim(df[which(is.na(df$predictability)&!is.na(df$month)),])[1]/dim(df)[1]

## select covariates in prediction
dat <- df %>% dplyr::select(ID, year, education, income, injill, spouse.precarious, industry, occupation, race, hourly,
                            region, sex, union, urban, spouse.exist, child.exist,age,month,
                            Lz) %>%
  arrange(ID,year)
dat[which(dat$education==95),"education"] <- NA
dat[which(is.na(dat$hourly)),"hourly"] <- 0

## lag variables from the last observed covariates
dat <- dat[which((!is.na(dat$month)) |
                   (is.na(dat$month & dat$year==2019)) ), ]

lag.dat <- dat %>% group_by(ID) %>% arrange(year) %>% mutate(education = lag(education),
                                                             income = lag(income),
                                                             industry = lag(industry),
                                                             occupation = lag(occupation),
                                                             region = lag(region),
                                                             spouse.precarious = lag(spouse.precarious),
                                                             union = lag(union),
                                                             urban = lag(urban),
                                                             injill = lag(injill),
                                                             hourly = lag(hourly),
                                                             spouse.exist = lag(spouse.exist),
                                                             child.exist = lag(child.exist),
                                                             age = lag(age),
                                                             lag.year = lag(year)) %>% ungroup()

lag.dat <- lag.dat %>% filter(year>2010)

## create non-interview indicator
lag.dat[which(!is.na(lag.dat$Lz)),"attrition"] <- 1
lag.dat[which(is.na(lag.dat$Lz)),"attrition"] <- 0

## fit the attrition model with all covariates
model <- glm(attrition ~ education + income + injill + factor(industry) + factor(spouse.precarious) + factor(occupation) + factor(race) + factor(region) + factor(hourly) +
               factor(sex) + factor(union) + factor(urban) + factor(spouse.exist) + factor(child.exist) +
               age, data = lag.dat, family = "binomial")
summary(
  model
)

## predict from the model
t <- predict(model,lag.dat,type="response")
t <- as.vector(t)
lag.dat$attrition <- t

## fit the attrition model with baseline variables
model <- glm(attrition ~ factor(race) + factor(sex), data = lag.dat, family = "binomial")

## predict from the model
t <- predict(model,lag.dat,type="response")
t <- as.vector(t)
lag.dat$stable_attrition <- t

## stabilize weight
lag.dat$sw_nonres <- lag.dat$stable_attrition/lag.dat$attrition
lag.dat <- lag.dat %>% dplyr::select(ID,year,sw_nonres)

## merge with df
df <- merge(df,lag.dat,by=c("ID","year"),all.x=T)
df <- df[which(df$year>=2009),]
df$sw <- df$sw_attrition*df$sw_nonres

## remove variables
rm(t,lag.dat,dat,model,irtsyn)
