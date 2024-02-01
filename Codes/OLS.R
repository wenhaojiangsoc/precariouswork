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

## read cleaned data
df <- read.csv("~/Dropbox/RA Linsey/NLSY97/precarious/Cleaned Data/master_01_trial.csv")
df <- df %>% dplyr::select(-c(X))

df <- df %>%
  group_by(occupation,industry) %>%
  mutate(occind = cur_group_id())

result <-
  data.frame(
  direction = c(rep("causation",8),rep("sorting",8)),
  response = rep(c(rep("general",4), rep("mental",4)),2),
  measure = rep(rep(c(rep("IRT",2), rep("summative",2)),4)),
  model = rep(c("OLS","LDV"),8),
  coef = rep(NA,16),
  se = rep(NA,16)
)

controls <-
  c("factor(race, level = c(4,1,2,3))",
    "factor(sex)",
    "education","income","spouse.exist",
    "child.exist","factor(union)","factor(urban)",
    "spouse.precarious","injill","factor(occupation)","factor(industry)","factor(year)")

############## Causation + General ##############

## Causation + General + OLS + IRT
treatment <-
  "Lz"
variables <- c(treatment, controls)
result[result$direction=="causation"&result$response=="general"&result$measure=="IRT"&result$model=="OLS","coef"] <-
  summary(lm(
    as.formula(paste("ghealth",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="causation"&result$response=="general"&result$measure=="IRT"&result$model=="OLS","se"] <-
  summary(lm(
    as.formula(paste("ghealth",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Causation + General + LDV + IRT
treatment <-
  c("Lz","lag.ghealth")
variables <- c(treatment, controls)
result[result$direction=="causation"&result$response=="general"&result$measure=="IRT"&result$model=="LDV","coef"] <-
  summary(lm(
    as.formula(paste("ghealth",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="causation"&result$response=="general"&result$measure=="IRT"&result$model=="LDV","se"] <-
  summary(lm(
    as.formula(paste("ghealth",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Causation + General + OLS + summative
treatment <-
  "precarious"
variables <- c(treatment, controls)
result[result$direction=="causation"&result$response=="general"&result$measure=="summative"&result$model=="OLS","coef"] <-
  summary(lm(
    as.formula(paste("ghealth",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="causation"&result$response=="general"&result$measure=="summative"&result$model=="OLS","se"] <-
  summary(lm(
    as.formula(paste("ghealth",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Causation + General + LDV + summative
treatment <-
  c("precarious","lag.ghealth")
variables <- c(treatment, controls)
result[result$direction=="causation"&result$response=="general"&result$measure=="summative"&result$model=="LDV","coef"] <-
  summary(lm(
    as.formula(paste("ghealth",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="causation"&result$response=="general"&result$measure=="summative"&result$model=="LDV","se"] <-
  summary(lm(
    as.formula(paste("ghealth",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

############## Causation + Mental ##############

## Causation + Mental + OLS + IRT
treatment <-
  "Lz"
variables <- c(treatment, controls)
result[result$direction=="causation"&result$response=="mental"&result$measure=="IRT"&result$model=="OLS","coef"] <-
  summary(lm(
    as.formula(paste("mental.pc.index",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="causation"&result$response=="mental"&result$measure=="IRT"&result$model=="OLS","se"] <-
  summary(lm(
    as.formula(paste("mental.pc.index",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Causation + Mental + LDV + IRT
treatment <-
  c("Lz","lag.mental.pc.index")
variables <- c(treatment, controls)
result[result$direction=="causation"&result$response=="mental"&result$measure=="IRT"&result$model=="LDV","coef"] <-
  summary(lm(
    as.formula(paste("mental.pc.index",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="causation"&result$response=="mental"&result$measure=="IRT"&result$model=="LDV","se"] <-
  summary(lm(
    as.formula(paste("mental.pc.index",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Causation + Mental + OLS + summative
treatment <-
  "precarious"
variables <- c(treatment, controls)
result[result$direction=="causation"&result$response=="mental"&result$measure=="summative"&result$model=="OLS","coef"] <-
  summary(lm(
    as.formula(paste("mental.pc.index",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="causation"&result$response=="mental"&result$measure=="summative"&result$model=="OLS","se"] <-
  summary(lm(
    as.formula(paste("mental.pc.index",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Causation + Mental + LDV + summative
treatment <-
  c("precarious","lag.mental.pc.index")
variables <- c(treatment, controls)
result[result$direction=="causation"&result$response=="mental"&result$measure=="summative"&result$model=="LDV","coef"] <-
  summary(lm(
    as.formula(paste("mental.pc.index",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="causation"&result$response=="mental"&result$measure=="summative"&result$model=="LDV","se"] <-
  summary(lm(
    as.formula(paste("mental.pc.index",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]


############## Sorting + General ##############

## Sorting + General + OLS + IRT
treatment <-
  "ghealth"
variables <- c(treatment, controls)
result[result$direction=="sorting"&result$response=="general"&result$measure=="IRT"&result$model=="OLS","coef"] <-
  summary(lm(
    as.formula(paste("Lz",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="sorting"&result$response=="general"&result$measure=="IRT"&result$model=="OLS","se"] <-
  summary(lm(
    as.formula(paste("Lz",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Sorting + General + LDV + IRT
treatment <-
  c("ghealth","lag.Lz")
variables <- c(treatment, controls)
result[result$direction=="sorting"&result$response=="general"&result$measure=="IRT"&result$model=="LDV","coef"] <-
  summary(lm(
    as.formula(paste("Lz",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="sorting"&result$response=="general"&result$measure=="IRT"&result$model=="LDV","se"] <-
  summary(lm(
    as.formula(paste("Lz",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Sorting + General + OLS + summative
treatment <-
  "ghealth"
variables <- c(treatment, controls)
result[result$direction=="sorting"&result$response=="general"&result$measure=="summative"&result$model=="OLS","coef"] <-
  summary(lm(
    as.formula(paste("precarious",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="sorting"&result$response=="general"&result$measure=="summative"&result$model=="OLS","se"] <-
  summary(lm(
    as.formula(paste("precarious",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Sorting + General + LDV + summative
treatment <-
  c("ghealth","lag.precarious")
variables <- c(treatment, controls)
result[result$direction=="sorting"&result$response=="general"&result$measure=="summative"&result$model=="LDV","coef"] <-
  summary(lm(
    as.formula(paste("precarious",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="sorting"&result$response=="general"&result$measure=="summative"&result$model=="LDV","se"] <-
  summary(lm(
    as.formula(paste("precarious",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

############## Sorting + Mental ##############

## Sorting + Mental + OLS + IRT
treatment <-
  "mental.pc.index"
variables <- c(treatment, controls)
result[result$direction=="sorting"&result$response=="mental"&result$measure=="IRT"&result$model=="OLS","coef"] <-
  summary(lm(
    as.formula(paste("Lz",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="sorting"&result$response=="mental"&result$measure=="IRT"&result$model=="OLS","se"] <-
  summary(lm(
    as.formula(paste("Lz",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Sorting + Mental + LDV + IRT
treatment <-
  c("mental.pc.index","lag.Lz")
variables <- c(treatment, controls)
result[result$direction=="sorting"&result$response=="mental"&result$measure=="IRT"&result$model=="LDV","coef"] <-
  summary(lm(
    as.formula(paste("Lz",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="sorting"&result$response=="mental"&result$measure=="IRT"&result$model=="LDV","se"] <-
  summary(lm(
    as.formula(paste("Lz",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Sorting + Mental + OLS + summative
treatment <-
  "mental.pc.index"
variables <- c(treatment, controls)
result[result$direction=="sorting"&result$response=="mental"&result$measure=="summative"&result$model=="OLS","coef"] <-
  summary(lm(
    as.formula(paste("precarious",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="sorting"&result$response=="mental"&result$measure=="summative"&result$model=="OLS","se"] <-
  summary(lm(
    as.formula(paste("precarious",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Sorting + Mental + LDV + summative
treatment <-
  c("mental.pc.index","lag.precarious")
variables <- c(treatment, controls)
result[result$direction=="sorting"&result$response=="mental"&result$measure=="summative"&result$model=="LDV","coef"] <-
  summary(lm(
    as.formula(paste("precarious",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="sorting"&result$response=="mental"&result$measure=="summative"&result$model=="LDV","se"] <-
  summary(lm(
    as.formula(paste("precarious",
                     paste(variables, collapse = " + "),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

result[result$response=="general","response"] <- "general health"
result[result$response=="mental","response"] <- "mental health"

result %>%
  filter(direction=="sorting") %>%
  ggplot(aes(x = factor(measure), y = coef, color = model)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
                 size = 3.5) + 
  facet_grid(response~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0.15,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","green4")) +
  coord_flip() +
  ylim(-0.15,0.03) +
  xlab("Measure of Precarity") +
  ylab("") +
  theme_classic() +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=11),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        axis.line = element_blank(),
        strip.text.y = element_text(size = 14, colour = "black"),
        panel.border = element_rect(colour = "black", fill = NA, linewidth=0.6),
        axis.text.y = element_text(size=14, angle=90, hjust=0.5),
        axis.text.x = element_text(size=12),
        axis.title=element_text(size=14,hjust=0.5),
        legend.text = element_text(size=12),
        legend.title = element_text(size=14)) 

ggsave("/Users/wenhao/Library/CloudStorage/Dropbox/RA Linsey/NLSY97/precarious/Writings/Plots/OLS_LDV_sorting.png", width = 7.6, height = 13, units = "cm")

result %>%
  filter(direction=="causation") %>%
  ggplot(aes(x = factor(measure), y = coef, color = model)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_grid(response~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0.15,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","green4")) +
  coord_flip() +
  ylim(-0.15,0.03) +
  xlab("Measure of Precarity") +
  ylab("") +
  theme_classic() +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=11),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        axis.line = element_blank(),
        strip.text.y = element_text(size = 14, colour = "black"),
        panel.border = element_rect(colour = "black", fill = NA, linewidth=0.6),
        axis.text.y = element_text(size=14, angle=90, hjust=0.5),
        axis.text.x = element_text(size=12),
        axis.title=element_text(size=14,hjust=0.5),
        legend.text = element_text(size=12),
        legend.title = element_text(size=14)) 

ggsave("/Users/wenhao/Library/CloudStorage/Dropbox/RA Linsey/NLSY97/precarious/Writings/Plots/OLS_LDV_causation.png", width = 7.6, height = 13, units = "cm")

