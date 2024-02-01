h1 <- as.numeric(quantile(df[df$year==2011,"ghealth"],0.25,na.rm=T))
h2 <- as.numeric(quantile(df[df$year==2013,"ghealth"],0.25,na.rm=T))


p2_list <- c()
h3_list <- c()
p3_list <- c()
h4_list <- c()
p4_list <- c()
h5_list <- c()
p5_list <- c()

for (i in 1:200){
  p2 <- h1*rnorm(1,-0.15,0.027) + h2*rnorm(1,-0.252,0.036) + rnorm(1,0.098,0.021)
  h3 <- p2*rnorm(1,-0.134,0.024) + rnorm(1,-0.075,0.017)
  p3 <- h2*rnorm(1,-0.15,0.027) + h3*rnorm(1,-0.252,0.036) + p2*rnorm(1,0.192,0.023) + rnorm(1,0.029,0.020) + p2
  h4 <- p2*rnorm(1,-0.184,0.031) + p3*rnorm(1,-0.149,0.026) + rnorm(1,-0.042,0.017)
  p4 <- p3*rnorm(1,0.192,0.023) + h3*rnorm(1,-0.15,0.027) + h4*rnorm(1,-0.252,0.036) + rnorm(1,0.035,0.030) + p3
  h5 <- p2*rnorm(1,-0.196,0.035) + p3*rnorm(1,-0.108,0.032) + p4*rnorm(1,-0.126,0.033) + rnorm(1,-0.062,0.017)
  p5 <- p4*rnorm(1,0.192,0.023) + h4*rnorm(1,-0.15,0.027) + h5*rnorm(1,-0.252,0.036) + rnorm(1,-0.609,0.017) + 1*p4
  
  p2_list <- c(p2_list,p2)
  h3_list <- c(h3_list,h3)
  p3_list <- c(p3_list,p3)
  h4_list <- c(h4_list,h4)
  p4_list <- c(p4_list,p4)
  h5_list <- c(h5_list,h5)
  p5_list <- c(p5_list,p5)
}  

plot <-
  data.frame(
  period = c(rep(2,200),rep(3,200),rep(4,200),rep(5,200)),
  health = c(rep(h2,200),h3_list,h4_list,h5_list),
  precarious = c(p2_list,p3_list,p4_list,p5_list)
)

library(reshape2)
plot <- melt(plot, id.vars=c("period"))
plot <-
  plot %>%
  group_by(period,variable) %>%
  summarize(
    se = sd(value,na.rm=T),
    value = mean(value,na.rm=T))
plot

ggplot(plot %>% filter(se!=0), aes(x=period, y=value, group=variable, color=variable,shape=variable)) +
  geom_point(position=position_dodge(0.15))+
  geom_errorbar(aes(ymin=value-se*1.96, ymax=value+se*1.96), width=0,
                position=position_dodge(0.15)) +
  theme_classic() +
  ylim(-0.5,1.1) +
  geom_hline(yintercept=0, linetype="dashed", color = "grey50") +
  ylab("Predicted Value") +
  xlab("Period") +
  scale_color_manual(name = "", labels=c("General Health","Precarity"), values=c("brown","green4")) +
  scale_shape_manual(name = "", labels=c("General Health","Precarity"), values=c(16,15)) +
  theme(text=element_text(family="Times",size=14),
        legend.text = element_text(size=13),
        legend.position = "bottom",
        plot.title = element_text(size=10),
        axis.text.x = element_text(size=14),
        axis.text.y=element_text(size=14),
        axis.title = element_text(size=14))

ggsave("~/Dropbox/RA Linsey/NLSY97/precarious/Writings/Plots/cumulative.png", width = 9, height = 10.6, units = "cm")
