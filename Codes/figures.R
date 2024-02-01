library(lavaan)
library(semPlot)

##################
###illustration###
##################

## prepare data for SEM plot
df_sem <- reshape(as.data.frame(df_dpm), 
                  idvar = c("ID","sex","race_black","race_hispanic","race_mixed","race_white"),
                  timevar = "year", direction = "wide", sep = "_")

## get lavaan codes
sem <- dpm(precarious ~ pre(lag(ghealth)) + pre(ghealth) + lag(income) + income,
    data = df_dpm,
    error.inv = TRUE, information = "observed", missing = "fiml",
    fixed.effects = TRUE, print.only = T)

sem <- 
'
## Main regressions

precarious_2 ~ en1 * ghealth_1 + en2 * ghealth_2 + ex1 * income_1 + ex2 * income_2 + p1 * precarious_1
precarious_3 ~ en1 * ghealth_2 + en2 * ghealth_3 + ex1 * income_2 + ex2 * income_3 + p1 * precarious_2
precarious_4 ~ en1 * ghealth_3 + en2 * ghealth_4 + ex1 * income_3 + ex2 * income_4 + p1 * precarious_3
precarious_5 ~ en1 * ghealth_4 + en2 * ghealth_5 + ex1 * income_4 + ex2 * income_5 + p1 * precarious_4

## Alpha latent variable (random intercept)

alpha =~ 1 * precarious_2 + 1 * precarious_3 + 1 * precarious_4 + 1 * precarious_5

## Alpha free to covary with observed variables (fixed effects)

alpha ~~  ghealth_1 +  ghealth_2 +  ghealth_3 +  ghealth_4 +  ghealth_5 +  income_1 +  income_2 +  income_3 +  income_4 +  income_5 +  precarious_1

## Correlating DV errors with future values of predetermined predictors

precarious_4 ~~ ghealth_5
precarious_3 ~~ ghealth_4 + ghealth_5
precarious_2 ~~ ghealth_3 + ghealth_4 + ghealth_5

## Predetermined predictors covariances

ghealth_1 ~~ income_1 + income_2 + income_3 + income_4 + income_5 + precarious_1
ghealth_2 ~~ ghealth_1 + income_1 + income_2 + income_3 + income_4 + income_5 + precarious_1
ghealth_3 ~~ ghealth_1 + ghealth_2 + income_1 + income_2 + income_3 + income_4 + income_5 + precarious_1
ghealth_4 ~~ ghealth_1 + ghealth_2 + ghealth_3 + income_1 + income_2 + income_3 + income_4 + income_5 + precarious_1
ghealth_5 ~~ ghealth_1 + ghealth_2 + ghealth_3 + ghealth_4 + income_1 + income_2 + income_3 + income_4 + income_5 + precarious_1

## Exogenous (time varying and invariant) predictors covariances

income_1 ~~ precarious_1
income_2 ~~ income_1 + precarious_1
income_3 ~~ income_1 + income_2 + precarious_1
income_4 ~~ income_1 + income_2 + income_3 + precarious_1
income_5 ~~ income_1 + income_2 + income_3 + income_4 + precarious_1

## Holding DV error variance constant for each wave

precarious_2 ~~ precarious_2
precarious_3 ~~ precarious_3
precarious_4 ~~ precarious_4
precarious_5 ~~ precarious_5

## Let DV variance vary across waves

precarious_2 ~ 1
precarious_3 ~ 1
precarious_4 ~ 1
precarious_5 ~ 1
'  

## fit the SEM model
sem <- sem(sem, data = df_sem)

##plot the SEM model - H ~ P
semPaths(sem, intercepts = FALSE, layout = "tree",
         nodeLabels = c(expression(Rho[2]),expression(Rho[3]),expression(Rho[4]),
                        expression(Rho[5]),expression(Eta[1]),expression(Eta[2]),
                        expression(Chi[1]),expression(Chi[2]),expression(Rho[1]),
                        expression(Eta[3]),expression(Chi[3]),expression(Eta[4]),
                        expression(Chi[4]),expression(Eta[5]),expression(Chi[5]),
                        expression(eta)),
         label.font = 3, sizeMan = 5, edge.label.cex = 1.2, edge.label.position = 0.6,
         label.prop = 0.8, label.cex = 1.5,rotation=1, exoVar = FALSE, exoCov=TRUE,
         sizeLat=6, asize = 2,
         edgeLabels = c(expression(beta[1]),expression(beta[2]),
                        "","",
                        expression(beta[0]),expression(beta[1]),
                        expression(beta[2]),"",
                        "",expression(beta[0]),expression(beta[1]),
                        expression(beta[2]),"",
                        "",expression(beta[0]),expression(beta[1]),
                        expression(beta[2]),"",
                        "",expression(beta[0])),
         edge.color = c(rep("darkblue",2),rep("grey49",3),
                        rep("darkblue",2),rep("grey49",3),
                        rep("darkblue",2),rep("grey49",3),
                        rep("darkblue",2),rep("grey49",18),
                        rep("darkred",6),rep("grey49",150)))

##plot the SEM model - P ~ H
semPaths(sem, intercepts = FALSE, layout = "tree",
         nodeLabels = c(expression(Eta[2]),expression(Eta[3]),expression(Eta[4]),
                        expression(Eta[5]),expression(Rho[1]),expression(Rho[2]),
                        expression(Chi[1]),expression(Chi[2]),expression(Eta[1]),
                        expression(Rho[3]),expression(Chi[3]),expression(Eta[4]),
                        expression(Chi[4]),expression(Rho[5]),expression(Chi[5]),
                        expression(eta)),
         label.font = 3, sizeMan = 5, edge.label.cex = 1.2, edge.label.position = 0.6,
         label.prop = 0.8, label.cex = 1.5,rotation=1, exoVar = FALSE, exoCov=TRUE,
         sizeLat=6, asize = 2,
         edgeLabels = c(expression(beta[1]),expression(beta[2]),
                        "","",
                        expression(beta[0]),expression(beta[1]),
                        expression(beta[2]),"",
                        "",expression(beta[0]),expression(beta[1]),
                        expression(beta[2]),"",
                        "",expression(beta[0]),expression(beta[1]),
                        expression(beta[2]),"",
                        "",expression(beta[0])),
         edge.color = c(rep("darkblue",2),rep("grey49",3),
                        rep("darkblue",2),rep("grey49",3),
                        rep("darkblue",2),rep("grey49",3),
                        rep("darkblue",2),rep("grey49",18),
                        rep("darkred",6),rep("grey49",150)))

#####################
###w/ coefficients###
#####################

##plot the SEM model - Selection - female
semPaths(sem, intercepts = FALSE, layout = "tree",
         nodeLabels = c(expression(Rho[2]),expression(Rho[3]),expression(Rho[4]),
                        expression(Rho[5]),expression(Eta[1]),expression(Eta[2]),
                        expression(Chi[1]),expression(Chi[2]),expression(Rho[1]),
                        expression(Eta[3]),expression(Chi[3]),expression(Eta[4]),
                        expression(Chi[4]),expression(Eta[5]),expression(Chi[5]),
                        expression(eta)),
         label.font = 3, sizeMan = 5, edge.label.cex = 0.75, edge.label.position = 0.32,
         label.prop = 0.8, label.cex = 1.5,rotation=1, exoVar = FALSE,sizeLat=6, 
         exoCov = T,
         asize = 2,
         edgeLabels = c("-0.15***","-0.25***",rep("",2),"0.192***",
                        "-0.15***","-0.25***",rep("",2),"0.192***",
                        "-0.15***","-0.25***",rep("",2),"0.192***",
                        "-0.15***","-0.25***",rep("",2),"0.192***",rep("",15),
                        "-0.09**","-0.12***","-0.07*","-0.11***","-0.13***","-0.14***"),
         edge.color = c(rep("darkblue",2),rep("grey49",3),
                        rep("darkblue",2),rep("grey49",3),
                        rep("darkblue",2),rep("grey49",3),
                        rep("darkblue",2),rep("grey49",18),
                        rep("darkred",6),rep("grey49",150)))


##plot the SEM model - Selection - male
semPaths(sem, intercepts = FALSE, layout = "tree",
         nodeLabels = c(expression(Rho[2]),expression(Rho[3]),expression(Rho[4]),
                        expression(Rho[5]),expression(Eta[1]),expression(Eta[2]),
                        expression(Chi[1]),expression(Chi[2]),expression(Rho[1]),
                        expression(Eta[3]),expression(Chi[3]),expression(Eta[4]),
                        expression(Chi[4]),expression(Eta[5]),expression(Chi[5]),
                        expression(eta)),
         label.font = 3, sizeMan = 5, edge.label.cex = 0.75, edge.label.position = 0.32,
         label.prop = 0.8, label.cex = 1.5,rotation=1, exoVar = FALSE,sizeLat=6,
         asize = 2,
         edgeLabels = c("-0.08","-0.05",rep("",2),"0.186***",
                        "-0.08","-0.05",rep("",2),"0.186***",
                        "-0.08","-0.05",rep("",2),"0.186***",
                        "-0.08","-0.05",rep("",2),"0.186***",rep("",15),
                        "-0.02","0.02","0.01","0.01","-0.03","-0.02"),
         edge.color = c(rep("darkblue",2),rep("grey49",3),
                        rep("darkblue",2),rep("grey49",3),
                        rep("darkblue",2),rep("grey49",3),
                        rep("darkblue",2),rep("grey49",18),
                        rep("darkred",6),rep("grey49",150)))


#####################################################
#####Histogram: Frequency of Precarious Schedule#####
#####################################################

df[which(df$precarious_dummy==min(df$precarious_dummy,na.rm=T)),"precarious_dummy"] <- 0
df[which(df$precarious_dummy==max(df$precarious_dummy,na.rm=T)),"precarious_dummy"] <- 1

df %>% filter(ID %in% 
                unique(df[which(df$precarious_dummy==1),"ID"])) %>%
  group_by(ID) %>%
  summarise(n=sum(precarious_dummy,na.rm = T)) %>%
  ggplot(aes(x=n)) +
  geom_histogram(bins = 4, binwidth = 0.5) +
  theme_bw() +
  xlab("Number of times in Precarity") +
  ylab("Count") +
  theme(text=element_text(family="Times"))


df %>%
  filter(!is.na(precarious)) %>%
  group_by(precarious,year) %>%
  summarize(count=sum(sw,na.rm=T)) %>%
  mutate(prop = count/sum(count))

df %>%
  filter(!is.na(precarious)&!is.na(ghealth)) %>%
  group_by(sex,ghealth) %>%
  summarize(count=sum(sw,na.rm=T)) %>%
  mutate(prop = count/sum(count))

df %>%
  filter(!is.na(precarious)&!is.na(ghealth)) %>%
  group_by(sex,ghealth,precarious) %>%
  summarize(count=sum(sw,na.rm=T)) %>%
  print(n=50)

df %>%
  filter(!is.na(precarious)) %>%
  group_by(year,precarious) %>%
  summarize(count=sum(sw,na.rm=T))

df %>%
  filter(!is.na(precarious)) %>%
  group_by(year,precarious) %>%
  summarize(count=n())

