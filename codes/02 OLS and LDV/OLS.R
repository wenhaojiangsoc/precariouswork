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
df <- read.csv("/Users/wenhao/Library/CloudStorage/Dropbox/RA Linsey/github_share/data cleaned/master_01.csv")
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
    "education","income","spouse.exist",
    "factor(sex)","factor(region)",
    "child.exist","factor(union)","factor(urban)",
    "spouse.precarious","injill","factor(occupation)","factor(hourly)",
    "factor(industry)","factor(year)")

############## Causation + General ##############

## Causation + General + OLS + IRT
treatment <-
  "Lz"
variables <- c(treatment, controls)
model1 <- felm(
  as.formula(paste("ghealth",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="causation"&result$response=="general"&result$measure=="IRT"&result$model=="OLS","coef"] <-
  summary(model1)$coef[2,1]
result[result$direction=="causation"&result$response=="general"&result$measure=="IRT"&result$model=="OLS","se"] <-
  summary(model1)$coef[2,2]

## Causation + General + LDV + IRT
treatment <-
  c("Lz","lag.ghealth")
variables <- c(treatment, controls)
model2 <- felm(
  as.formula(paste("ghealth",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="causation"&result$response=="general"&result$measure=="IRT"&result$model=="LDV","coef"] <-
  summary(model2)$coef[2,1]
result[result$direction=="causation"&result$response=="general"&result$measure=="IRT"&result$model=="LDV","se"] <-
  summary(model2)$coef[2,2]

## Causation + General + OLS + summative
treatment <-
  "precarious"
variables <- c(treatment, controls)
model3 <- felm(
  as.formula(paste("ghealth",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="causation"&result$response=="general"&result$measure=="summative"&result$model=="OLS","coef"] <-
  summary(model3)$coef[2,1]
result[result$direction=="causation"&result$response=="general"&result$measure=="summative"&result$model=="OLS","se"] <-
  summary(model3)$coef[2,2]

## Causation + General + LDV + summative
treatment <-
  c("precarious","lag.ghealth")
variables <- c(treatment, controls)
model4 <- felm(
  as.formula(paste("ghealth",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                   sep = " ~ ")),
  data = df
)
result[result$direction=="causation"&result$response=="general"&result$measure=="summative"&result$model=="LDV","coef"] <-
  summary(model4)$coef[2,1]
result[result$direction=="causation"&result$response=="general"&result$measure=="summative"&result$model=="LDV","se"] <-
  summary(model4)$coef[2,2]

############## Causation + Mental ##############

## Causation + Mental + OLS + IRT
treatment <-
  "Lz"
variables <- c(treatment, controls)
result[result$direction=="causation"&result$response=="mental"&result$measure=="IRT"&result$model=="OLS","coef"] <-
  summary(felm(
    as.formula(paste("mental.pc.index",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="causation"&result$response=="mental"&result$measure=="IRT"&result$model=="OLS","se"] <-
  summary(felm(
    as.formula(paste("mental.pc.index",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Causation + Mental + LDV + IRT
treatment <-
  c("Lz","lag.mental.pc.index")
variables <- c(treatment, controls)
result[result$direction=="causation"&result$response=="mental"&result$measure=="IRT"&result$model=="LDV","coef"] <-
  summary(felm(
    as.formula(paste("mental.pc.index",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="causation"&result$response=="mental"&result$measure=="IRT"&result$model=="LDV","se"] <-
  summary(felm(
    as.formula(paste("mental.pc.index",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Causation + Mental + OLS + summative
treatment <-
  "precarious"
variables <- c(treatment, controls)
result[result$direction=="causation"&result$response=="mental"&result$measure=="summative"&result$model=="OLS","coef"] <-
  summary(felm(
    as.formula(paste("mental.pc.index",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="causation"&result$response=="mental"&result$measure=="summative"&result$model=="OLS","se"] <-
  summary(felm(
    as.formula(paste("mental.pc.index",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Causation + Mental + LDV + summative
treatment <-
  c("precarious","lag.mental.pc.index")
variables <- c(treatment, controls)
result[result$direction=="causation"&result$response=="mental"&result$measure=="summative"&result$model=="LDV","coef"] <-
  summary(felm(
    as.formula(paste("mental.pc.index",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="causation"&result$response=="mental"&result$measure=="summative"&result$model=="LDV","se"] <-
  summary(felm(
    as.formula(paste("mental.pc.index",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]


############## Sorting + General ##############

## Sorting + General + OLS + IRT
treatment <-
  "ghealth"
variables <- c(treatment, controls)
model1 <- felm(
  as.formula(paste("Lz",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="sorting"&result$response=="general"&result$measure=="IRT"&result$model=="OLS","coef"] <-
  summary(model1)$coef[2,1]
result[result$direction=="sorting"&result$response=="general"&result$measure=="IRT"&result$model=="OLS","se"] <-
  summary(model1)$coef[2,2]

## Sorting + General + LDV + IRT
treatment <-
  c("ghealth","lag.Lz")
variables <- c(treatment, controls)
model2 <- felm(
  as.formula(paste("Lz",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="sorting"&result$response=="general"&result$measure=="IRT"&result$model=="LDV","coef"] <-
  summary(model2)$coef[2,1]
result[result$direction=="sorting"&result$response=="general"&result$measure=="IRT"&result$model=="LDV","se"] <-
  summary(model2)$coef[2,2]

## Sorting + General + OLS + summative
treatment <-
  "ghealth"
variables <- c(treatment, controls)
model3 <- felm(
  as.formula(paste("precarious",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="sorting"&result$response=="general"&result$measure=="summative"&result$model=="OLS","coef"] <-
  summary(model3)$coef[2,1]
result[result$direction=="sorting"&result$response=="general"&result$measure=="summative"&result$model=="OLS","se"] <-
  summary(model3)$coef[2,2]

## Sorting + General + LDV + summative
treatment <-
  c("ghealth","lag.precarious")
variables <- c(treatment, controls)
model4 <- felm(
  as.formula(paste("precarious",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="sorting"&result$response=="general"&result$measure=="summative"&result$model=="LDV","coef"] <-
  summary(model4)$coef[2,1]
result[result$direction=="sorting"&result$response=="general"&result$measure=="summative"&result$model=="LDV","se"] <-
  summary(model4)$coef[2,2]

############## Sorting + Mental ##############

## Sorting + Mental + OLS + IRT
treatment <-
  "mental.pc.index"
variables <- c(treatment, controls)
result[result$direction=="sorting"&result$response=="mental"&result$measure=="IRT"&result$model=="OLS","coef"] <-
  summary(felm(
    as.formula(paste("Lz",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="sorting"&result$response=="mental"&result$measure=="IRT"&result$model=="OLS","se"] <-
  summary(felm(
    as.formula(paste("Lz",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Sorting + Mental + LDV + IRT
treatment <-
  c("mental.pc.index","lag.Lz")
variables <- c(treatment, controls)
result[result$direction=="sorting"&result$response=="mental"&result$measure=="IRT"&result$model=="LDV","coef"] <-
  summary(felm(
    as.formula(paste("Lz",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="sorting"&result$response=="mental"&result$measure=="IRT"&result$model=="LDV","se"] <-
  summary(felm(
    as.formula(paste("Lz",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Sorting + Mental + OLS + summative
treatment <-
  "mental.pc.index"
variables <- c(treatment, controls)
result[result$direction=="sorting"&result$response=="mental"&result$measure=="summative"&result$model=="OLS","coef"] <-
  summary(felm(
    as.formula(paste("precarious",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="sorting"&result$response=="mental"&result$measure=="summative"&result$model=="OLS","se"] <-
  summary(felm(
    as.formula(paste("precarious",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

## Sorting + Mental + LDV + summative
treatment <-
  c("mental.pc.index","lag.precarious")
variables <- c(treatment, controls)
result[result$direction=="sorting"&result$response=="mental"&result$measure=="summative"&result$model=="LDV","coef"] <-
  summary(felm(
    as.formula(paste("precarious",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,1]
result[result$direction=="sorting"&result$response=="mental"&result$measure=="summative"&result$model=="LDV","se"] <-
  summary(felm(
    as.formula(paste("precarious",
                     paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                     sep = " ~ ")),
    data = df, weights = df$sw
  ))$coef[2,2]

result[result$response=="general","response"] <- "general health"
result[result$response=="mental","response"] <- "mental health"

result %>%
  filter(direction=="sorting") %>%
  mutate(z = coef / se,
         p = 2 * (1 - pnorm(abs(z))),
         sig = case_when(
           p < 0.001 ~ "***",
           p < 0.01  ~ "**",
           p < 0.05  ~ "*",
           p < 0.1  ~ "",
           TRUE      ~ ""
         )) %>%
  ggplot(aes(x = factor(measure), y = coef, color = model)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure,
                 group = model,
                 y = coef), position=position_dodge(width=0.4),
                 size = 3.5) + 
  facet_grid(response~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se,
                    group = model), width=0,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","grey50")) +
  coord_flip() +
  ylim(-0.06,0.03) +
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
        legend.title = element_text(size=14)) + 
  geom_text(
    aes(label = sig,
        group = model,
        y = 0.02),
        position = position_dodge(width = 0.4),
        size = 5,
        hjust = 0,
        vjust = 0.75,
        show.legend = FALSE)

ggsave("results/figures/OLS_LDV_sorting.png", width = 7.6, height = 13, units = "cm")

result %>%
  filter(direction=="causation") %>%
  mutate(z = coef / se,
         p = 2 * (1 - pnorm(abs(z))),
         sig = case_when(
           p < 0.001 ~ "***",
           p < 0.01  ~ "**",
           p < 0.05  ~ "*",
           TRUE      ~ ""
         )) %>%
  ggplot(aes(x = factor(measure), y = coef, color = model)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_grid(response~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","grey50")) +
  coord_flip() +
  ylim(-0.06,0.03) +
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
        legend.title = element_text(size=14))  + 
  geom_text(
    aes(label = sig,
        group = model,
        y = 0.015),
    position = position_dodge(width = 0.4),
    size = 5,
    hjust = 0,
    vjust = 0.75,
    show.legend = FALSE)

ggsave("results/figures/OLS_LDV_causation.png",
       width = 7.6, height = 13, units = "cm")

