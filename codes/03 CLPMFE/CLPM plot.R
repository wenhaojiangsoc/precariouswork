library(ggplot2)
library(dplyr)
library(ggpubr)

## plot
results <- read.csv("/Users/wenhao/Dropbox/RA Linsey/NLSY97/precarious/Results from HPC/CLPM_results.csv")

## change order
results$model <- as.character(results$model)
results$model <- factor(results$model, levels=c("female","male","full"))


######## Sorting ########

## plot
general_full_sorting <-
  results %>%
  filter(direction=="sorting") %>%
  filter(model=="full") %>%
  ggplot(aes(x = factor(measure), y = coef, color = time)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_grid(response~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0.15,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","green4")) +
  coord_flip() +
  xlab("Measure of Precarity") +
  ylim(-0.35,0.1) +
  ylab("") +
  theme_classic() +
  ggtitle("Full Sample") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=14, hjust=0.5),
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

general_male_sorting <-
  results %>%
  filter(direction=="sorting") %>%
  filter(model=="male") %>%
  ggplot(aes(x = factor(measure), y = coef, color = time)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_grid(response~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0.15,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","green4")) +
  coord_flip() +
  ## xlab("Measure of Precarity") +
  xlab("") +
  ylim(-0.45,0.2) +
  ylab("") +
  theme_classic() +
  ggtitle("Male Sample") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=14, hjust=0.5),
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

general_female_sorting <-
  results %>%
  filter(direction=="sorting") %>%
  filter(model=="female") %>%
  ggplot(aes(x = factor(measure), y = coef, color = time)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_grid(response~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0.15,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","green4")) +
  coord_flip() +
  ## xlab("Measure of Precarity") +
  xlab("") +
  ylim(-0.45,0.1) +
  ylab("") +
  theme_classic() +
  ggtitle("Female Sample") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=14, hjust=0.5),
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

## plot
ggarrange(general_full_sorting,
          general_male_sorting,
          general_female_sorting,
          common.legend = TRUE, legend="bottom",nrow=1,ncol=3,
          labels=NULL)
ggsave("/Users/wenhao/Library/CloudStorage/Dropbox/RA Linsey/NLSY97/precarious/Writings/Plots/CLPM_sorting.png", width = 23.6, height = 13.5, units = "cm")

######## Causation ########

## plot
general_full_causation <-
  results %>%
  filter(direction=="causation") %>%
  filter(model=="full") %>%
  ggplot(aes(x = factor(measure), y = coef, color = time)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_grid(response~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0.15,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","green4")) +
  coord_flip() +
  xlab("Measure of Precarity") +
  ylim(-0.45,0.2) +
  ylab("") +
  theme_classic() +
  ggtitle("Full Sample") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=14, hjust=0.5),
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

general_male_causation <-
  results %>%
  filter(direction=="causation") %>%
  filter(model=="male") %>%
  ggplot(aes(x = factor(measure), y = coef, color = time)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_grid(response~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0.15,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","green4")) +
  coord_flip() +
  ## xlab("Measure of Precarity") +
  xlab("") +
  ylim(-0.45,0.2) +
  ylab("") +
  theme_classic() +
  ggtitle("Male Sample") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=14, hjust=0.5),
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

general_female_causation <-
  results %>%
  filter(direction=="causation") %>%
  filter(model=="female") %>%
  ggplot(aes(x = factor(measure), y = coef, color = time)) +
  geom_hline(yintercept = 0, colour = "red3", lty = 2) +
  geom_point(aes(x = measure, 
                 y = coef), position=position_dodge(width=0.4),
             size = 3.5) + 
  facet_grid(response~.) +
  geom_errorbar(aes(ymin=coef-1.96*se, ymax=coef+1.96*se), width=0.15,
                position=position_dodge(.4), lwd = 2/3) +
  scale_color_manual(values=c("blue3","green4")) +
  coord_flip() +
  ## xlab("Measure of Precarity") +
  xlab("") +
  ylim(-0.5,0.18) +
  ylab("") +
  theme_classic() +
  ggtitle("Female Sample") +
  theme(text = element_text(family="Times"),
        legend.position="bottom",
        plot.title = element_text(size=14, hjust=0.5),
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

## plot
ggarrange(general_full_causation,
          general_male_causation,
          general_female_causation,
          common.legend = TRUE, legend="bottom",nrow=1,ncol=3,
          labels=NULL)
ggsave("/Users/wenhao/Library/CloudStorage/Dropbox/RA Linsey/NLSY97/precarious/Writings/Plots/CLPM_causation.png", width = 23.6, height = 13.5, units = "cm")


