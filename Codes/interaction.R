df_dpm$inter <- df_dpm$limita*df_dpm$ghealth

ghealth_1 <- 
  dpm(precarious ~ pre(lag(ghealth)) + pre(ghealth) +
        pre(lag(inter)) + pre(inter) + lag(limita) + limita 
    | sex + race_black + race_hispanic + race_mixed,
    data = df_dpm,
    error.inv = FALSE, information = "observed", missing = "fiml",
    fixed.effects = TRUE)

summary(ghealth_1)

ghealth_1_male <- 
  dpm(precarious ~ pre(lag(ghealth)) + pre(ghealth) +
        pre(lag(inter)) + pre(inter) + lag(limita) + limita 
      | race_black + race_hispanic + race_mixed,
      data = df_dpm[which(df_dpm$sex==1),],
      error.inv = FALSE, information = "observed", missing = "fiml",
      fixed.effects = TRUE, weights = sw)

summary(ghealth_1_male)

ghealth_1_fem <- 
  dpm(precarious ~ pre(lag(ghealth)) + pre(ghealth) +
        pre(lag(inter)) + pre(inter) + lag(limita) + limita 
      | race_black + race_hispanic + race_mixed,
      data = df_dpm[which(df_dpm$sex==2),],
      error.inv = FALSE, information = "observed", missing = "fiml",
      fixed.effects = TRUE)

summary(ghealth_1_fem)


df_dpm$inter <- df_dpm$limitk*df_dpm$ghealth

ghealth_1_k <- 
  dpm(precarious ~ pre(lag(ghealth)) + pre(ghealth) +
        pre(lag(inter)) + pre(inter) + lag(limitk) + limitk 
      | sex + race_black + race_hispanic + race_mixed,
      data = df_dpm,
      error.inv = FALSE, information = "observed", missing = "fiml",
      fixed.effects = TRUE)

summary(ghealth_1_k)

ghealth_1_male_k <- 
  dpm(precarious ~ pre(lag(ghealth)) + pre(ghealth) +
        pre(lag(inter)) + pre(inter) + lag(limitk) + limitk 
      | race_black + race_hispanic + race_mixed,
      data = df_dpm[which(df_dpm$sex==1),],
      error.inv = FALSE, information = "observed", missing = "fiml",
      fixed.effects = TRUE)

summary(ghealth_1_male_k)

ghealth_1_fem_k <- 
  dpm(precarious ~ pre(lag(ghealth)) + pre(ghealth) +
       pre(lag(inter)) + pre(inter) + lag(limitk) + limitk 
      | race_black + race_hispanic + race_mixed,
      data = df_dpm[which(df_dpm$sex==2),],
      error.inv = FALSE, information = "observed", missing = "fiml",
      fixed.effects = TRUE)

summary(ghealth_1_fem_k)

summary(
  dpm(Lz ~ pre(lag(mental.pc.index)) + pre(mental.pc.index) +
        lag(income) + income + lag(education) + education
      | race_black + race_hispanic + race_mixed,
      data = df_dpm[which(df_dpm$sex==1),],
      error.inv = FALSE, information = "observed", missing = "fiml",
      fixed.effects = TRUE, weights = sw)
)

summary(
  dpm(precarious ~ pre(lag(ghealth)) + pre(ghealth) +
        lag(income) + income + lag(education) + education
      | race_black + race_hispanic + race_mixed,
      data = df_dpm[which(df_dpm$sex==1),],
      error.inv = FALSE, information = "observed", missing = "fiml",
      fixed.effects = TRUE,weights = sw)
)

summary(
  felm(ghealth~mental.pc.index|ID+year|0|0,df[which(df$sex==1),],weights=df[which(df$sex==1),]$sw)
)
