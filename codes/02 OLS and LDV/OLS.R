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
    "factor(region)","factor(sex)",
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
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
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
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
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

## presenting full results except the lagged dependent variable in Appendix

data.frame(
  variables=rep(
    c("Precarious","Race-Black","Race-Hispanic","Race-Mixed",
              "Education","Income","Have Spouse",
              "North Central","South","West",
              "Female","Have Child","Labor Union",
              "Urban","Spouse in Precarity","Hourly Paid"),4
    ),
  coefficients=c(summary(model1)$coef[c(2,3,4,5,6,7,8,9,10,11,
                                      12,13,14,15,16,48),1],
                 summary(model2)$coef[c(2,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,17,49),1],
                 summary(model3)$coef[c(2,3,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,48),1],
                 summary(model4)$coef[c(2,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,17,49),1]
  ),
  se=c(summary(model1)$coef[c(2,3,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,48),2],
                 summary(model2)$coef[c(2,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,17,49),2],
                 summary(model3)$coef[c(2,3,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,48),2],
                 summary(model4)$coef[c(2,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,17,49),2]
  ),
  models=c(rep("OLS",16),rep("LDV",16),rep("OLS",16),rep("LDV",16)),
  measures=c(rep("IRT",32),rep("summative",32))
) %>%
  dplyr::mutate(
    variables = factor(variables, levels = c("Precarious","Race-Black","Race-Hispanic","Race-Mixed",
                                             "Education","Income","Have Spouse",
                                             "North Central","South","West",
                                             "Female","Have Child","Labor Union",
                                             "Urban","Spouse in Precarity","Hourly Paid")),
    models = factor(models, levels = c("LDV","OLS"))
  ) %>%
  ggplot(aes(x=variables,y=coefficients,group=models,color=models)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(position=position_dodge(width=0.65),
             size = 2.8) + 
  facet_grid(.~measures) +
  geom_errorbar(aes(ymin=coefficients-1.96*se, ymax=coefficients+1.96*se), width=0,
                position=position_dodge(0.65), lwd = 1/3) +
  scale_color_manual(values=c("blue3","grey50")) +
  scale_x_discrete(limits=rev) +
  scale_y_continuous(breaks = seq(-0.2, 0.2, by = 0.075), expand = expansion(mult = c(0.1, 0.1))) +
  coord_flip() +
  theme_bw() +
  xlab("Variables") + 
  ylab("Coefficients") + 
  ggtitle("Health Effect Model, General Health") +
  labs(color = "Precarity Measure") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=15, hjust=0.5),
        panel.grid.major = element_blank(),
        strip.text.x = element_text(size = 13, colour = "black"),
        panel.border = element_rect(colour = "black", fill = NA, linewidth=0.6),
        axis.text.y = element_text(size=10),
        axis.text.x = element_text(size=10, angle=0, vjust=0.85, hjust=0.7),
        axis.title=element_text(size=14,hjust=0.5),
        legend.text = element_text(size=14),
        legend.title = element_text(size=14))

setwd("/Users/wenhao/Library/CloudStorage/Dropbox/RA Linsey/github_share")
ggsave("results/figures/OLS_LDV_causation_general.png", width = 15.6, height = 12.5, units = "cm")

############## Causation + Mental ##############

## Causation + Mental + OLS + IRT
treatment <-
  "Lz"
variables <- c(treatment, controls)
model1 <- felm(
  as.formula(paste("mental.pc.index",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="causation"&result$response=="mental"&result$measure=="IRT"&result$model=="OLS","coef"] <-
  summary(model1)$coef[2,1]
result[result$direction=="causation"&result$response=="mental"&result$measure=="IRT"&result$model=="OLS","se"] <-
  summary(model1)$coef[2,2]

## Causation + Mental + LDV + IRT
treatment <-
  c("Lz","lag.mental.pc.index")
variables <- c(treatment, controls)
model2 <- felm(
  as.formula(paste("mental.pc.index",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="causation"&result$response=="mental"&result$measure=="IRT"&result$model=="LDV","coef"] <-
  summary(model2)$coef[2,1]
result[result$direction=="causation"&result$response=="mental"&result$measure=="IRT"&result$model=="LDV","se"] <-
  summary(model2)$coef[2,2]

## Causation + Mental + OLS + summative
treatment <-
  "precarious"
variables <- c(treatment, controls)
model3 <- felm(
  as.formula(paste("mental.pc.index",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="causation"&result$response=="mental"&result$measure=="summative"&result$model=="OLS","coef"] <-
  summary(model3)$coef[2,1]
result[result$direction=="causation"&result$response=="mental"&result$measure=="summative"&result$model=="OLS","se"] <-
  summary(model3)$coef[2,2]

## Causation + Mental + LDV + summative
treatment <-
  c("precarious","lag.mental.pc.index")
variables <- c(treatment, controls)
model4 <- felm(
  as.formula(paste("mental.pc.index",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="causation"&result$response=="mental"&result$measure=="summative"&result$model=="LDV","coef"] <-
  summary(model4)$coef[2,1]
result[result$direction=="causation"&result$response=="mental"&result$measure=="summative"&result$model=="LDV","se"] <-
  summary(model4)$coef[2,2]

## presenting full results except the lagged dependent variable in Appendix

data.frame(
  variables=rep(
    c("Precarious","Race-Black","Race-Hispanic","Race-Mixed",
      "Education","Income","Have Spouse",
      "North Central","South","West",
      "Female","Have Child","Labor Union",
      "Urban","Spouse in Precarity","Hourly Paid"),4
  ),
  coefficients=c(summary(model1)$coef[c(2,3,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,48),1],
                 summary(model2)$coef[c(2,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,17,49),1],
                 summary(model3)$coef[c(2,3,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,48),1],
                 summary(model4)$coef[c(2,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,17,49),1]
  ),
  se=c(summary(model1)$coef[c(2,3,4,5,6,7,8,9,10,11,
                              12,13,14,15,16,48),2],
       summary(model2)$coef[c(2,4,5,6,7,8,9,10,11,
                              12,13,14,15,16,17,49),2],
       summary(model3)$coef[c(2,3,4,5,6,7,8,9,10,11,
                              12,13,14,15,16,48),2],
       summary(model4)$coef[c(2,4,5,6,7,8,9,10,11,
                              12,13,14,15,16,17,49),2]
  ),
  models=c(rep("OLS",16),rep("LDV",16),rep("OLS",16),rep("LDV",16)),
  measures=c(rep("IRT",32),rep("summative",32))
) %>%
  dplyr::mutate(
    variables = factor(variables, levels = c("Precarious","Race-Black","Race-Hispanic","Race-Mixed",
                                             "Education","Income","Have Spouse",
                                             "North Central","South","West",
                                             "Female","Have Child","Labor Union",
                                             "Urban","Spouse in Precarity","Hourly Paid")),
    models = factor(models, levels = c("LDV","OLS"))
  ) %>%
  ggplot(aes(x=variables,y=coefficients,group=models,color=models)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(position=position_dodge(width=0.65),
             size = 2.8) + 
  facet_grid(.~measures) +
  geom_errorbar(aes(ymin=coefficients-1.96*se, ymax=coefficients+1.96*se), width=0,
                position=position_dodge(0.65), lwd = 1/3) +
  scale_color_manual(values=c("blue3","grey50")) +
  scale_x_discrete(limits=rev) +
  scale_y_continuous(breaks = seq(-0.2, 0.2, by = 0.075), expand = expansion(mult = c(0.1, 0.1))) +
  coord_flip() +
  theme_bw() +
  xlab("Variables") + 
  ylab("Coefficients") + 
  ggtitle("Health Effect Model, Mental Health") +
  labs(color = "Precarity Measure") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=15, hjust=0.5),
        panel.grid.major = element_blank(),
        strip.text.x = element_text(size = 13, colour = "black"),
        panel.border = element_rect(colour = "black", fill = NA, linewidth=0.6),
        axis.text.y = element_text(size=10),
        axis.text.x = element_text(size=10, angle=0, vjust=0.85, hjust=0.7),
        axis.title=element_text(size=14,hjust=0.5),
        legend.text = element_text(size=14),
        legend.title = element_text(size=14))

## save
ggsave("results/figures/OLS_LDV_causation_mental.png", width = 15.6, height = 12.5, units = "cm")

############## Sorting + General ##############

## Sorting + General + OLS + IRT
treatment <-
  "ghealth"
variables <- c(treatment, controls)
model1 <- felm(
  as.formula(paste("Lz",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
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
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
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

## presenting full results except the lagged dependent variable in Appendix
data.frame(
  variables=rep(
    c("Health","Race-Black","Race-Hispanic","Race-Mixed",
      "Education","Income","Have Spouse",
      "North Central","South","West",
      "Female","Have Child","Labor Union",
      "Urban","Spouse in Precarity","Hourly Paid"),4
  ),
  coefficients=c(summary(model1)$coef[c(2,3,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,48),1],
                 summary(model2)$coef[c(2,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,17,49),1],
                 summary(model3)$coef[c(2,3,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,48),1],
                 summary(model4)$coef[c(2,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,17,49),1]
  ),
  se=c(summary(model1)$coef[c(2,3,4,5,6,7,8,9,10,11,
                              12,13,14,15,16,48),2],
       summary(model2)$coef[c(2,4,5,6,7,8,9,10,11,
                              12,13,14,15,16,17,49),2],
       summary(model3)$coef[c(2,3,4,5,6,7,8,9,10,11,
                              12,13,14,15,16,48),2],
       summary(model4)$coef[c(2,4,5,6,7,8,9,10,11,
                              12,13,14,15,16,17,49),2]
  ),
  models=c(rep("OLS",16),rep("LDV",16),rep("OLS",16),rep("LDV",16)),
  measures=c(rep("IRT",32),rep("summative",32))
) %>%
  dplyr::mutate(
    variables = factor(variables, levels = c("Health","Race-Black","Race-Hispanic","Race-Mixed",
                                             "Education","Income","Have Spouse",
                                             "North Central","South","West",
                                             "Female","Have Child","Labor Union",
                                             "Urban","Spouse in Precarity","Hourly Paid")),
    models = factor(models, levels = c("LDV","OLS"))
  ) %>%
  ggplot(aes(x=variables,y=coefficients,group=models,color=models)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(position=position_dodge(width=0.65),
             size = 2.8) + 
  facet_grid(.~measures) +
  geom_errorbar(aes(ymin=coefficients-1.96*se, ymax=coefficients+1.96*se), width=0,
                position=position_dodge(0.65), lwd = 1/3) +
  scale_color_manual(values=c("blue3","grey50")) +
  scale_x_discrete(limits=rev) +
  scale_y_continuous(breaks = seq(-0.2, 0.6, by = 0.1), expand = expansion(mult = c(0.1, 0.1))) +
  coord_flip() +
  theme_bw() +
  xlab("Variables") + 
  ylab("Coefficients") + 
  ggtitle("Health Sorting Model, General Health") +
  labs(color = "Precarity Measure") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=15, hjust=0.5),
        panel.grid.major = element_blank(),
        strip.text.x = element_text(size = 13, colour = "black"),
        panel.border = element_rect(colour = "black", fill = NA, linewidth=0.6),
        axis.text.y = element_text(size=10),
        axis.text.x = element_text(size=10, angle=0, vjust=0.85, hjust=0.7),
        axis.title=element_text(size=14,hjust=0.5),
        legend.text = element_text(size=14),
        legend.title = element_text(size=14))

## save
ggsave("results/figures/OLS_LDV_sorting_general.png", width = 15.6, height = 12.5, units = "cm")

############## Sorting + Mental ##############

## Sorting + Mental + OLS + IRT
treatment <-
  "mental.pc.index"
variables <- c(treatment, controls)
model1 <- felm(
  as.formula(paste("Lz",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="sorting"&result$response=="mental"&result$measure=="IRT"&result$model=="OLS","coef"] <-
  summary(model1)$coef[2,1]
result[result$direction=="sorting"&result$response=="mental"&result$measure=="IRT"&result$model=="OLS","se"] <-
  summary(model1)$coef[2,2]

## Sorting + Mental + LDV + IRT
treatment <-
  c("mental.pc.index","lag.Lz")
variables <- c(treatment, controls)
model2 <- felm(
  as.formula(paste("Lz",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="sorting"&result$response=="mental"&result$measure=="IRT"&result$model=="LDV","coef"] <-
  summary(model2)$coef[2,1]
result[result$direction=="sorting"&result$response=="mental"&result$measure=="IRT"&result$model=="LDV","se"] <-
  summary(model2)$coef[2,2]

## Sorting + Mental + OLS + summative
treatment <-
  "mental.pc.index"
variables <- c(treatment, controls)
model3 <- felm(
  as.formula(paste("precarious",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | 0"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="sorting"&result$response=="mental"&result$measure=="summative"&result$model=="OLS","coef"] <-
  summary(model3)$coef[2,1]
result[result$direction=="sorting"&result$response=="mental"&result$measure=="summative"&result$model=="OLS","se"] <-
  summary(model3)$coef[2,2]

## Sorting + Mental + LDV + summative
treatment <-
  c("mental.pc.index","lag.precarious")
variables <- c(treatment, controls)
model4 <- felm(
  as.formula(paste("precarious",
                   paste(paste(variables, collapse = " + "),"| 0 | 0 | ID"),
                   sep = " ~ ")),
  data = df, weights = df$sw
)
result[result$direction=="sorting"&result$response=="mental"&result$measure=="summative"&result$model=="LDV","coef"] <-
  summary(model4)$coef[2,1]
result[result$direction=="sorting"&result$response=="mental"&result$measure=="summative"&result$model=="LDV","se"] <-
  summary(model4)$coef[2,2]

## presenting full results except the lagged dependent variable in Appendix
data.frame(
  variables=rep(
    c("Health","Race-Black","Race-Hispanic","Race-Mixed",
      "Education","Income","Have Spouse",
      "North Central","South","West",
      "Female","Have Child","Labor Union",
      "Urban","Spouse in Precarity","Hourly Paid"),4
  ),
  coefficients=c(summary(model1)$coef[c(2,3,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,48),1],
                 summary(model2)$coef[c(2,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,17,49),1],
                 summary(model3)$coef[c(2,3,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,48),1],
                 summary(model4)$coef[c(2,4,5,6,7,8,9,10,11,
                                        12,13,14,15,16,17,49),1]
  ),
  se=c(summary(model1)$coef[c(2,3,4,5,6,7,8,9,10,11,
                              12,13,14,15,16,48),2],
       summary(model2)$coef[c(2,4,5,6,7,8,9,10,11,
                              12,13,14,15,16,17,49),2],
       summary(model3)$coef[c(2,3,4,5,6,7,8,9,10,11,
                              12,13,14,15,16,48),2],
       summary(model4)$coef[c(2,4,5,6,7,8,9,10,11,
                              12,13,14,15,16,17,49),2]
  ),
  models=c(rep("OLS",16),rep("LDV",16),rep("OLS",16),rep("LDV",16)),
  measures=c(rep("IRT",32),rep("summative",32))
) %>%
  dplyr::mutate(
    variables = factor(variables, levels = c("Health","Race-Black","Race-Hispanic","Race-Mixed",
                                             "Education","Income","Have Spouse",
                                             "North Central","South","West",
                                             "Female","Have Child","Labor Union",
                                             "Urban","Spouse in Precarity","Hourly Paid")),
    models = factor(models, levels = c("LDV","OLS"))
  ) %>%
  ggplot(aes(x=variables,y=coefficients,group=models,color=models)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(position=position_dodge(width=0.65),
             size = 2.8) + 
  facet_grid(.~measures) +
  geom_errorbar(aes(ymin=coefficients-1.96*se, ymax=coefficients+1.96*se), width=0,
                position=position_dodge(0.65), lwd = 1/3) +
  scale_color_manual(values=c("blue3","grey50")) +
  scale_x_discrete(limits=rev) +
  scale_y_continuous(breaks = seq(-0.2, 0.6, by = 0.1), expand = expansion(mult = c(0.1, 0.1))) +
  coord_flip() +
  theme_bw() +
  xlab("Variables") + 
  ylab("Coefficients") + 
  ggtitle("Health Sorting Model, Mental Health") +
  labs(color = "Precarity Measure") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=15, hjust=0.5),
        panel.grid.major = element_blank(),
        strip.text.x = element_text(size = 13, colour = "black"),
        panel.border = element_rect(colour = "black", fill = NA, linewidth=0.6),
        axis.text.y = element_text(size=10),
        axis.text.x = element_text(size=10, angle=0, vjust=0.85, hjust=0.7),
        axis.title=element_text(size=14,hjust=0.5),
        legend.text = element_text(size=14),
        legend.title = element_text(size=14))

## save
ggsave("results/figures/OLS_LDV_sorting_mental.png", width = 15.6, height = 12.5, units = "cm")

## presenting main effects
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
                 size = 4) + 
  facet_grid(response~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se,
                    group = model), width=0,
                position=position_dodge(.4), lwd = 1/3) +
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
             size = 4) + 
  facet_grid(response~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0,
                position=position_dodge(.4), lwd = 1/3) +
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

