library(ggplot2)
library(dplyr)
library(ggpubr)

## set working directory
setwd("/Users/wenhao/Library/CloudStorage/Dropbox/RA Linsey/github_share")

## plot
results <- read.csv("results/CLPM.csv")

## change order
results$model <- as.character(results$model)
results$model <- factor(results$model, levels=c("female","male","full"))

## change effect label
results <- results %>%
  mutate(direction = case_when(
    direction == "sorting" ~ "sorting effect",
    direction == "causation" ~ "health effect"
  ))

######## General Health ########

general_full <-
  results %>%
  mutate(z = coef / se,
         p = 2 * (1 - pnorm(abs(z))),
         sig = case_when(
           p < 0.001 ~ "***",
           p < 0.01  ~ "**",
           p < 0.05  ~ "*",
           TRUE      ~ ""
         )) %>%
  filter(response=="general health") %>%
  filter(model=="full") %>%
  ggplot(aes(x = factor(measure), y = coef, color = time)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_grid(direction~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","grey50")) +
  coord_flip() +
  xlab("Measure of Precarity") +
  ylim(-0.23,0.06) +
  ylab("") +
  theme_classic() +
  ggtitle("Full Sample") +
  labs(color = "variable temporality") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=15, hjust=0.5),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        axis.line = element_blank(),
        strip.text.y = element_text(size = 14, colour = "black"),
        panel.border = element_rect(colour = "black", fill = NA, linewidth=0.6),
        axis.text.y = element_text(size=15, angle=90, hjust=0.5),
        axis.text.x = element_text(size=12),
        axis.title=element_text(size=15,hjust=0.5),
        legend.text = element_text(size=15),
        legend.title = element_text(size=15))  + 
  geom_text(
    aes(label = sig,
        group = time,
        y = 0.025),
    position = position_dodge(width = 0.4),
    size = 5,
    hjust = 0,
    vjust = 0.75,
    show.legend = FALSE) 

general_male <-
  results %>%
  mutate(z = coef / se,
         p = 2 * (1 - pnorm(abs(z))),
         sig = case_when(
           p < 0.001 ~ "***",
           p < 0.01  ~ "**",
           p < 0.05  ~ "*",
           TRUE      ~ ""
         )) %>%
  filter(response=="general health") %>%
  filter(model=="male") %>%
  ggplot(aes(x = factor(measure), y = coef, color = time)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_grid(direction~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","grey50")) +
  coord_flip() +
  xlab("Measure of Precarity") +
  ylim(-0.26,0.1) +
  ylab("") +
  theme_classic() +
  ggtitle("Male Sample") +
  labs(color = "variable temporality") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=15, hjust=0.5),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        axis.line = element_blank(),
        strip.text.y = element_text(size = 14, colour = "black"),
        panel.border = element_rect(colour = "black", fill = NA, linewidth=0.6),
        axis.text.y = element_text(size=15, angle=90, hjust=0.5),
        axis.text.x = element_text(size=12),
        axis.title=element_text(size=15,hjust=0.5),
        legend.text = element_text(size=15),
        legend.title = element_text(size=15))  + 
  geom_text(
    aes(label = sig,
        group = time,
        y = 0.045),
    position = position_dodge(width = 0.4),
    size = 5,
    hjust = 0,
    vjust = 0.75,
    show.legend = FALSE) 

general_female <-
  results %>%
  mutate(z = coef / se,
         p = 2 * (1 - pnorm(abs(z))),
         sig = case_when(
           p < 0.001 ~ "***",
           p < 0.01  ~ "**",
           p < 0.05  ~ "*",
           TRUE      ~ ""
         )) %>%
  filter(response=="general health") %>%
  filter(model=="female") %>%
  ggplot(aes(x = factor(measure), y = coef, color = time)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_grid(direction~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","grey50")) +
  coord_flip() +
  xlab("Measure of Precarity") +
  ylim(-0.3,0.08) +
  ylab("") +
  theme_classic() +
  ggtitle("Female Sample") +
  labs(color = "variable temporality") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=15, hjust=0.5),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        axis.line = element_blank(),
        strip.text.y = element_text(size = 14, colour = "black"),
        panel.border = element_rect(colour = "black", fill = NA, linewidth=0.6),
        axis.text.y = element_text(size=15, angle=90, hjust=0.5),
        axis.text.x = element_text(size=12),
        axis.title=element_text(size=15,hjust=0.5),
        legend.text = element_text(size=15),
        legend.title = element_text(size=15))  + 
  geom_text(
    aes(label = sig,
        group = time,
        y = 0.038),
    position = position_dodge(width = 0.4),
    size = 5,
    hjust = 0,
    vjust = 0.75,
    show.legend = FALSE) 

## plot
ggarrange(general_full,
          general_male,
          general_female,
          common.legend = TRUE, legend="bottom",nrow=1,ncol=3,
          labels=NULL)
ggsave("results/figures/CLPM_general.png", width = 23.6, height = 13.5, units = "cm")


######## Mental Health ########

mental_full <- results %>%
  mutate(z = coef / se,
         p = 2 * (1 - pnorm(abs(z))),
         sig = case_when(
           p < 0.001 ~ "***",
           p < 0.01  ~ "**",
           p < 0.05  ~ "*",
           TRUE      ~ ""
         )) %>%
  filter(response=="mental health") %>%
  filter(model=="full") %>%
  ggplot(aes(x = factor(measure), y = coef, color = time)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_wrap(.~direction, scales = "free", ncol = 1, 
             strip.position = "right") +
  scale_y_continuous(expand = expansion(mult = c(0.2, 0.17))) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","grey50")) +
  coord_flip() +
  xlab("Measure of Precarity") +
  ylab("") +
  theme_classic() +
  ggtitle("Full Sample") +
  labs(color = "variable temporality") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=15, hjust=0.5),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        axis.line = element_blank(),
        strip.text.y = element_text(size = 14, colour = "black"),
        panel.border = element_rect(colour = "black", fill = NA, linewidth=0.6),
        axis.text.y = element_text(size=15, angle=90, hjust=0.5),
        axis.text.x = element_text(size=12),
        axis.title=element_text(size=15,hjust=0.5),
        legend.text = element_text(size=15),
        legend.title = element_text(size=15))  + 
  geom_text(
    aes(label = sig,
        group = time,
        y = 0.006),
    position = position_dodge(width = 0.4),
    size = 5,
    hjust = 0,
    vjust = 0.75,
    show.legend = FALSE) 

mental_male <-
  results %>%
  mutate(z = coef / se,
         p = 2 * (1 - pnorm(abs(z))),
         sig = case_when(
           p < 0.001 ~ "***",
           p < 0.01  ~ "**",
           p < 0.05  ~ "*",
           TRUE      ~ ""
         )) %>%
  filter(response=="mental health") %>%
  filter(model=="male") %>%
  ggplot(aes(x = factor(measure), y = coef, color = time)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_wrap(.~direction, scales = "free", ncol = 1, 
             strip.position = "right") +
  scale_y_continuous(expand = expansion(mult = c(0.2, 0.2))) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","grey50")) +
  coord_flip() +
  xlab("Measure of Precarity") +
  ylab("") +
  theme_classic() +
  ggtitle("Male Sample") +
  labs(color = "variable temporality") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=15, hjust=0.5),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        axis.line = element_blank(),
        strip.text.y = element_text(size = 14, colour = "black"),
        panel.border = element_rect(colour = "black", fill = NA, linewidth=0.6),
        axis.text.y = element_text(size=15, angle=90, hjust=0.5),
        axis.text.x = element_text(size=12),
        axis.title=element_text(size=15,hjust=0.5),
        legend.text = element_text(size=15),
        legend.title = element_text(size=15))  + 
  geom_text(
    aes(label = sig,
        group = time,
        y = 0.005),
    position = position_dodge(width = 0.4),
    size = 5,
    hjust = 0,
    vjust = 0.75,
    show.legend = FALSE) 

mental_female <-
  results %>%
  mutate(z = coef / se,
         p = 2 * (1 - pnorm(abs(z))),
         sig = case_when(
           p < 0.001 ~ "***",
           p < 0.01  ~ "**",
           p < 0.05  ~ "*",
           TRUE      ~ ""
         )) %>%
  filter(response=="mental health") %>%
  filter(model=="female") %>%
  ggplot(aes(x = factor(measure), y = coef, color = time)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_wrap(.~direction, scales = "free", ncol = 1, 
             strip.position = "right") +
  scale_y_continuous(expand = expansion(mult = c(0.2, 0.13))) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","grey50")) +
  coord_flip() +
  xlab("Measure of Precarity") +
  ylab("") +
  theme_classic() +
  ggtitle("Female Sample") +
  labs(color = "variable temporality") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=15, hjust=0.5),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank(),
        axis.line = element_blank(),
        strip.text.y = element_text(size = 14, colour = "black"),
        panel.border = element_rect(colour = "black", fill = NA, linewidth=0.6),
        axis.text.y = element_text(size=15, angle=90, hjust=0.5),
        axis.text.x = element_text(size=12),
        axis.title=element_text(size=15,hjust=0.5),
        legend.text = element_text(size=15),
        legend.title = element_text(size=15))  + 
  geom_text(
    aes(label = sig,
        group = time,
        y = 0.005),
    position = position_dodge(width = 0.4),
    size = 5,
    hjust = 0,
    vjust = 0.75,
    show.legend = FALSE) 

## plot
ggarrange(mental_full,
          mental_male,
          mental_female,
          common.legend = TRUE, legend="bottom",nrow=1,ncol=3,
          labels=NULL)
ggsave("results/figures/CLPM_mental.png", width = 23.6, height = 13.5, units = "cm")
