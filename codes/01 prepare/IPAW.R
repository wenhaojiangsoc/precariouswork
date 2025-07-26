library(stargazer)

########Attrition########

## select covariates in prediction
dat <- df %>% dplyr::select(ID, year, education, income, industry, occupation, race, hourly,
                     region, sex, union, urban, injill, spouse.precarious, spouse.exist, 
                     child.exist, age, month,
                     Lz) %>%
  arrange(ID,year)
dat[which(dat$education==95),"education"] <- NA
dat[which(is.na(dat$hourly)),"hourly"] <- 0

## lag variables from the last observed covariates
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
model1 <- glm(attrition ~ education + income + injill + factor(industry) +
               factor(spouse.precarious) + factor(occupation) + factor(race) + factor(region) + factor(hourly) +
               factor(sex) + factor(union) + factor(urban) + factor(spouse.exist) + factor(child.exist) +
               age, data = lag.dat, family = "binomial")

## predict from the model
t <- predict(model1,lag.dat,type="response")
t <- as.vector(t)
lag.dat$attrition <- t

## fit the attrition model with baseline variables
model2 <- glm(attrition ~ factor(race) + factor(sex), data = lag.dat, family = "binomial")

## predict from the model
t <- predict(model2,lag.dat,type="response")
t <- as.vector(t)
lag.dat$stable_attrition <- t

## stabilize weight
lag.dat$sw_attrition <- lag.dat$stable_attrition/lag.dat$attrition
lag.dat <- lag.dat %>% dplyr::select(ID,year,sw_attrition)

## merge with df
df <- merge(df,lag.dat,by=c("ID","year"),all.x=T)

########Non-Response########

## select covariates in prediction
dat <- df %>% dplyr::select(ID, year, education, income, injill, spouse.precarious, industry, occupation, race, hourly,
                            region, sex, union, urban, spouse.exist, child.exist,
                            age, month, Lz) %>%
  arrange(ID,year)
dat[which(dat$education==95),"education"] <- NA
dat[which(is.na(dat$hourly)),"hourly"] <- 0

## lag variables from the last observed covariates
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
model3 <- glm(attrition ~ education + income + injill + factor(industry) + factor(spouse.precarious) + factor(occupation) + factor(race) + factor(region) + factor(hourly) +
               factor(sex) + factor(union) + factor(urban) + factor(spouse.exist) + factor(child.exist) +
               age, data = lag.dat, family = "binomial")

## predict from the model
t <- predict(model3,lag.dat,type="response")
t <- as.vector(t)
lag.dat$attrition <- t

## fit the attrition model with baseline variables
model4 <- glm(attrition ~ factor(race) + factor(sex), data = lag.dat, family = "binomial")

## predict from the model
t <- predict(model4,lag.dat,type="response")
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
rm(t,lag.dat,dat,model1,model2,model3,model4,irtsyn)

## regress weight to covariates
df[which(is.na(df$hourly)),"hourly"] <- 0
model1 <- lm(
  sw_attrition ~ Lz +
    factor(race, level = c(4,1,2,3)) + 
    factor(sex) + 
    education + income +
    factor(spouse.exist) + 
    factor(child.exist) +
    factor(urban) + 
    factor(union) +
    spouse.precarious +
    factor(hourly) +
    factor(region) +
    factor(industry) +
    factor(occupation),
  data = df
)

model2 <- lm(
  sw_nonres ~ Lz +
    factor(race, level = c(4,1,2,3)) + 
    factor(sex) + 
    education + income +
    factor(spouse.exist) + 
    factor(child.exist) +
    factor(urban) + 
    factor(union) +
    spouse.precarious +
    factor(hourly) +
    factor(region) +
    factor(industry) +
    factor(occupation),
  data = df
)

model3 <- lm(
  sw ~ Lz +
    factor(race, level = c(4,1,2,3)) + 
    factor(sex) + 
    education + income +
    factor(spouse.exist) + 
    factor(child.exist) +
    factor(urban) + 
    factor(union) +
    spouse.precarious +
    factor(hourly) +
    factor(region) +
    factor(industry) +
    factor(occupation),
  data = df
)

coef1 <- coef(model1)
coef2 <- coef(model2)
coef3 <- coef(model3)
se1 <- summary(model1)$coefficients[, "Std. Error"]
se2 <- summary(model2)$coefficients[, "Std. Error"]
se3 <- summary(model3)$coefficients[, "Std. Error"]

stargazer(model1,model2,model3,
          digits = 3,
          se = list(se1, se2, se3),
          report      = "vc*s",
          star.cutoffs = c(0.05, 0.01, 0.001),
          star.char = c("*", "**", "***"),
          type="text")
