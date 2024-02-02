
# Set working directory
# setwd()
setwd("~/Dropbox/RA Linsey/NLSY97/precarious")

new_data <- read.table('precarious.dat', sep=' ')
names(new_data) <- c('R0000100',
  'R0244000',
  'R0244700',
  'R0536300',
  'R0536401',
  'R0536402',
  'R1200300',
  'R1209101',
  'R1217500',
  'R1235800',
  'R1482600',
  'R2050000',
  'R2050800',
  'R2469000',
  'R2558800',
  'R2563201',
  'R2568001',
  'R2576800',
  'R3387200',
  'R3388000',
  'R3782800',
  'R3880300',
  'R3884801',
  'R3889701',
  'R3899100',
  'R4766800',
  'R4771900',
  'R4893600',
  'R4893800',
  'R4894000',
  'R5305200',
  'R5309200',
  'R5459400',
  'R5464001',
  'R5471801',
  'R5484100',
  'R6395500',
  'R6401500',
  'R7047000',
  'R7050300',
  'R7222400',
  'R7227701',
  'R7235601',
  'R7248400',
  'S0822300',
  'S0829000',
  'S0920800',
  'S0921000',
  'S0921200',
  'S1516100',
  'S1519900',
  'S1535500',
  'S1541601',
  'S1550401',
  'S1564300',
  'S1601900',
  'S1603000',
  'S2005400',
  'S2011401',
  'S2020301',
  'S2034400',
  'S2887000',
  'S2894400',
  'S3582600',
  'S3585900',
  'S3658000',
  'S3659000',
  'S3679000',
  'S3681000',
  'S3695000',
  'S3697000',
  'S3711000',
  'S3713000',
  'S3727000',
  'S3729000',
  'S3755000',
  'S3757000',
  'S3805700',
  'S3812301',
  'S3821501',
  'S3835800',
  'S4597000',
  'S4602900',
  'S4681900',
  'S4682100',
  'S4682300',
  'S5041000',
  'S5041700',
  'S5236800',
  'S5239600',
  'S5405600',
  'S5412700',
  'S5421801',
  'S5436300',
  'S6209000',
  'S6222100',
  'S6782200',
  'S6783100',
  'S7026600',
  'S7029800',
  'S7506100',
  'S7513600',
  'S7523100',
  'S7537100',
  'S8231400',
  'S8241400',
  'S8332300',
  'S8332500',
  'S8332700',
  'S8688800',
  'S8689700',
  'S8997800',
  'S9000900',
  'T0009400',
  'T0014000',
  'T0023600',
  'T0033700',
  'T0639200',
  'T0653200',
  'T1108600',
  'T1109400',
  'T1407700',
  'T1410600',
  'T2012100',
  'T2016100',
  'T2018500',
  'T2021300',
  'T2680200',
  'T2692700',
  'T2782600',
  'T2782800',
  'T2783000',
  'T3186000',
  'T3186900',
  'T3504400',
  'T3507200',
  'T3602100',
  'T3606400',
  'T3609000',
  'T3612000',
  'T4164900',
  'T4178700',
  'T4596900',
  'T4597800',
  'T4934100',
  'T4937100',
  'T5202300',
  'T5206800',
  'T5209400',
  'T5211900',
  'T5797300',
  'T5808400',
  'T6143700',
  'T6143900',
  'T6144100',
  'T6230100',
  'T6231000',
  'T6587300',
  'T6590200',
  'T6652100',
  'T6656600',
  'T6660000',
  'T6663300',
  'T7076600',
  'T7076700',
  'T7076800',
  'T7076900',
  'T7130500',
  'T7130900',
  'T7131300',
  'T7131700',
  'T7143000',
  'T7143300',
  'T7143600',
  'T7143900',
  'T7161700',
  'T7161800',
  'T7161900',
  'T7162000',
  'T7231400',
  'T7242300',
  'T7385200',
  'T7385400',
  'T7731100',
  'T7732100',
  'T8093500',
  'T8097600',
  'T8123700',
  'T8123801',
  'T8123901',
  'T8124001',
  'T8124101',
  'T8124201',
  'T8124301',
  'T8124401',
  'T8124501',
  'T8124601',
  'T8124701',
  'T8124801',
  'T8129000',
  'T8131800',
  'T8134500',
  'T8561800',
  'T8561900',
  'T8562000',
  'T8562100',
  'T8623800',
  'T8623900',
  'T8624000',
  'T8624100',
  'T8634900',
  'T8635000',
  'T8635100',
  'T8635200',
  'T8653800',
  'T8653900',
  'T8654000',
  'T8654100',
  'T8723400',
  'T8735000',
  'T8894100',
  'T8894300',
  'T9132600',
  'T9133500',
  'T9336000',
  'T9339600',
  'U0001900',
  'U0002001',
  'U0002101',
  'U0002201',
  'U0002301',
  'U0002401',
  'U0002501',
  'U0002601',
  'U0002701',
  'U0002801',
  'U0002901',
  'U0003001',
  'U0003101',
  'U0008800',
  'U0011900',
  'U0015000',
  'U0464800',
  'U0464900',
  'U0465000',
  'U0465100',
  'U0531400',
  'U0531500',
  'U0531600',
  'U0531700',
  'U0545100',
  'U0545200',
  'U0545300',
  'U0545400',
  'U0566300',
  'U0566400',
  'U0566500',
  'U0566600',
  'U0641000',
  'U0654900',
  'U0820700',
  'U0820900',
  'U1030700',
  'U1030900',
  'U1031100',
  'U1125900',
  'U1127100',
  'U1350100',
  'U1354200',
  'U1718000',
  'U1719400',
  'U1838600',
  'U1838701',
  'U1838801',
  'U1838901',
  'U1839001',
  'U1839101',
  'U1839201',
  'U1839301',
  'U1839401',
  'U1839501',
  'U1839601',
  'U1839701',
  'U1839801',
  'U1845400',
  'U1849100',
  'U1853200',
  'U2383600',
  'U2383700',
  'U2383800',
  'U2383900',
  'U2451700',
  'U2451800',
  'U2451900',
  'U2452000',
  'U2472100',
  'U2472200',
  'U2472300',
  'U2472400',
  'U2497400',
  'U2497500',
  'U2497600',
  'U2497700',
  'U2577100',
  'U2593500',
  'U2762800',
  'U2763100',
  'U2964800',
  'U2965000',
  'U2965200',
  'U3092700',
  'U3097800')


# Handle missing values

  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$R0000100[1.0 <= data$R0000100 & data$R0000100 <= 999.0] <- 1.0
  data$R0000100[1000.0 <= data$R0000100 & data$R0000100 <= 1999.0] <- 1000.0
  data$R0000100[2000.0 <= data$R0000100 & data$R0000100 <= 2999.0] <- 2000.0
  data$R0000100[3000.0 <= data$R0000100 & data$R0000100 <= 3999.0] <- 3000.0
  data$R0000100[4000.0 <= data$R0000100 & data$R0000100 <= 4999.0] <- 4000.0
  data$R0000100[5000.0 <= data$R0000100 & data$R0000100 <= 5999.0] <- 5000.0
  data$R0000100[6000.0 <= data$R0000100 & data$R0000100 <= 6999.0] <- 6000.0
  data$R0000100[7000.0 <= data$R0000100 & data$R0000100 <= 7999.0] <- 7000.0
  data$R0000100[8000.0 <= data$R0000100 & data$R0000100 <= 8999.0] <- 8000.0
  data$R0000100[9000.0 <= data$R0000100 & data$R0000100 <= 9999.0] <- 9000.0
  data$R0000100 <- factor(data$R0000100, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0), 
    labels=c("0",
      "1 TO 999",
      "1000 TO 1999",
      "2000 TO 2999",
      "3000 TO 3999",
      "4000 TO 4999",
      "5000 TO 5999",
      "6000 TO 6999",
      "7000 TO 7999",
      "8000 TO 8999",
      "9000 TO 9999"))
  data$R0244000 <- factor(data$R0244000, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$R0244700 <- factor(data$R0244700, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$R0536300 <- factor(data$R0536300, 
    levels=c(0.0,1.0,2.0), 
    labels=c("No Information",
      "Male",
      "Female"))
  data$R0536401 <- factor(data$R0536401, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0), 
    labels=c("1: January",
      "2: February",
      "3: March",
      "4: April",
      "5: May",
      "6: June",
      "7: July",
      "8: August",
      "9: September",
      "10: October",
      "11: November",
      "12: December"))
  data$R1200300 <- factor(data$R1200300, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$R1209101[0.0 <= data$R1209101 & data$R1209101 <= 10.0] <- 0.0
  data$R1209101[11.0 <= data$R1209101 & data$R1209101 <= 20.0] <- 11.0
  data$R1209101[21.0 <= data$R1209101 & data$R1209101 <= 30.0] <- 21.0
  data$R1209101[31.0 <= data$R1209101 & data$R1209101 <= 35.0] <- 31.0
  data$R1209101[36.0 <= data$R1209101 & data$R1209101 <= 40.0] <- 36.0
  data$R1209101[41.0 <= data$R1209101 & data$R1209101 <= 50.0] <- 41.0
  data$R1209101[51.0 <= data$R1209101 & data$R1209101 <= 60.0] <- 51.0
  data$R1209101[61.0 <= data$R1209101 & data$R1209101 <= 80.0] <- 61.0
  data$R1209101[81.0 <= data$R1209101 & data$R1209101 <= 100.0] <- 81.0
  data$R1209101[101.0 <= data$R1209101 & data$R1209101 <= 168.0] <- 101.0
  data$R1209101 <- factor(data$R1209101, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$R1217500 <- factor(data$R1217500, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$R1235800 <- factor(data$R1235800, 
    levels=c(0.0,1.0), 
    labels=c("Oversample",
      "Cross-sectional"))
  data$R1482600 <- factor(data$R1482600, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Black",
      "Hispanic",
      "Mixed Race (Non-Hispanic)",
      "Non-Black / Non-Hispanic"))
  data$R2050000 <- factor(data$R2050000, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$R2050800 <- factor(data$R2050800, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$R2469000 <- factor(data$R2469000, 
    levels=c(0.0,1.0), 
    labels=c("CONDITION DOES NOT APPLY",
      "CONDITION APPLIES"))
  data$R2558800 <- factor(data$R2558800, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$R2563201 <- factor(data$R2563201, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "UNGRADED"))
  data$R2568001[0.0 <= data$R2568001 & data$R2568001 <= 10.0] <- 0.0
  data$R2568001[11.0 <= data$R2568001 & data$R2568001 <= 20.0] <- 11.0
  data$R2568001[21.0 <= data$R2568001 & data$R2568001 <= 30.0] <- 21.0
  data$R2568001[31.0 <= data$R2568001 & data$R2568001 <= 35.0] <- 31.0
  data$R2568001[36.0 <= data$R2568001 & data$R2568001 <= 40.0] <- 36.0
  data$R2568001[41.0 <= data$R2568001 & data$R2568001 <= 50.0] <- 41.0
  data$R2568001[51.0 <= data$R2568001 & data$R2568001 <= 60.0] <- 51.0
  data$R2568001[61.0 <= data$R2568001 & data$R2568001 <= 80.0] <- 61.0
  data$R2568001[81.0 <= data$R2568001 & data$R2568001 <= 100.0] <- 81.0
  data$R2568001[101.0 <= data$R2568001 & data$R2568001 <= 168.0] <- 101.0
  data$R2568001 <- factor(data$R2568001, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$R2576800 <- factor(data$R2576800, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$R3387200 <- factor(data$R3387200, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$R3388000 <- factor(data$R3388000, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$R3782800 <- factor(data$R3782800, 
    levels=c(0.0,1.0), 
    labels=c("CONDITION DOES NOT APPLY",
      "CONDITION APPLIES"))
  data$R3880300 <- factor(data$R3880300, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$R3884801 <- factor(data$R3884801, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "UNGRADED"))
  data$R3889701[0.0 <= data$R3889701 & data$R3889701 <= 10.0] <- 0.0
  data$R3889701[11.0 <= data$R3889701 & data$R3889701 <= 20.0] <- 11.0
  data$R3889701[21.0 <= data$R3889701 & data$R3889701 <= 30.0] <- 21.0
  data$R3889701[31.0 <= data$R3889701 & data$R3889701 <= 35.0] <- 31.0
  data$R3889701[36.0 <= data$R3889701 & data$R3889701 <= 40.0] <- 36.0
  data$R3889701[41.0 <= data$R3889701 & data$R3889701 <= 50.0] <- 41.0
  data$R3889701[51.0 <= data$R3889701 & data$R3889701 <= 60.0] <- 51.0
  data$R3889701[61.0 <= data$R3889701 & data$R3889701 <= 80.0] <- 61.0
  data$R3889701[81.0 <= data$R3889701 & data$R3889701 <= 100.0] <- 81.0
  data$R3889701[101.0 <= data$R3889701 & data$R3889701 <= 168.0] <- 101.0
  data$R3889701 <- factor(data$R3889701, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$R3899100 <- factor(data$R3899100, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$R4766800 <- factor(data$R4766800, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$R4771900 <- factor(data$R4771900, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$R4893600 <- factor(data$R4893600, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$R4893800 <- factor(data$R4893800, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$R4894000 <- factor(data$R4894000, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$R5305200 <- factor(data$R5305200, 
    levels=c(0.0,1.0), 
    labels=c("CONDITION DOES NOT APPLY",
      "CONDITION APPLIES"))
  data$R5309200 <- factor(data$R5309200, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$R5459400 <- factor(data$R5459400, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$R5464001 <- factor(data$R5464001, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "UNGRADED"))
  data$R5471801[0.0 <= data$R5471801 & data$R5471801 <= 10.0] <- 0.0
  data$R5471801[11.0 <= data$R5471801 & data$R5471801 <= 20.0] <- 11.0
  data$R5471801[21.0 <= data$R5471801 & data$R5471801 <= 30.0] <- 21.0
  data$R5471801[31.0 <= data$R5471801 & data$R5471801 <= 35.0] <- 31.0
  data$R5471801[36.0 <= data$R5471801 & data$R5471801 <= 40.0] <- 36.0
  data$R5471801[41.0 <= data$R5471801 & data$R5471801 <= 50.0] <- 41.0
  data$R5471801[51.0 <= data$R5471801 & data$R5471801 <= 60.0] <- 51.0
  data$R5471801[61.0 <= data$R5471801 & data$R5471801 <= 80.0] <- 61.0
  data$R5471801[81.0 <= data$R5471801 & data$R5471801 <= 100.0] <- 81.0
  data$R5471801[101.0 <= data$R5471801 & data$R5471801 <= 168.0] <- 101.0
  data$R5471801 <- factor(data$R5471801, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$R5484100 <- factor(data$R5484100, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$R6395500 <- factor(data$R6395500, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$R6401500 <- factor(data$R6401500, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$R7047000 <- factor(data$R7047000, 
    levels=c(0.0,1.0), 
    labels=c("CONDITION DOES NOT APPLY",
      "CONDITION APPLIES"))
  data$R7050300 <- factor(data$R7050300, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$R7222400 <- factor(data$R7222400, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$R7227701 <- factor(data$R7227701, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "UNGRADED"))
  data$R7235601[0.0 <= data$R7235601 & data$R7235601 <= 10.0] <- 0.0
  data$R7235601[11.0 <= data$R7235601 & data$R7235601 <= 20.0] <- 11.0
  data$R7235601[21.0 <= data$R7235601 & data$R7235601 <= 30.0] <- 21.0
  data$R7235601[31.0 <= data$R7235601 & data$R7235601 <= 35.0] <- 31.0
  data$R7235601[36.0 <= data$R7235601 & data$R7235601 <= 40.0] <- 36.0
  data$R7235601[41.0 <= data$R7235601 & data$R7235601 <= 50.0] <- 41.0
  data$R7235601[51.0 <= data$R7235601 & data$R7235601 <= 60.0] <- 51.0
  data$R7235601[61.0 <= data$R7235601 & data$R7235601 <= 80.0] <- 61.0
  data$R7235601[81.0 <= data$R7235601 & data$R7235601 <= 100.0] <- 81.0
  data$R7235601[101.0 <= data$R7235601 & data$R7235601 <= 168.0] <- 101.0
  data$R7235601 <- factor(data$R7235601, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$R7248400 <- factor(data$R7248400, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$S0822300 <- factor(data$S0822300, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S0829000 <- factor(data$S0829000, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$S0920800 <- factor(data$S0920800, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$S0921000 <- factor(data$S0921000, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$S0921200 <- factor(data$S0921200, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$S1516100 <- factor(data$S1516100, 
    levels=c(0.0,1.0), 
    labels=c("CONDITION DOES NOT APPLY",
      "CONDITION APPLIES"))
  data$S1519900 <- factor(data$S1519900, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S1535500 <- factor(data$S1535500, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$S1541601 <- factor(data$S1541601, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "UNGRADED"))
  data$S1550401[0.0 <= data$S1550401 & data$S1550401 <= 10.0] <- 0.0
  data$S1550401[11.0 <= data$S1550401 & data$S1550401 <= 20.0] <- 11.0
  data$S1550401[21.0 <= data$S1550401 & data$S1550401 <= 30.0] <- 21.0
  data$S1550401[31.0 <= data$S1550401 & data$S1550401 <= 35.0] <- 31.0
  data$S1550401[36.0 <= data$S1550401 & data$S1550401 <= 40.0] <- 36.0
  data$S1550401[41.0 <= data$S1550401 & data$S1550401 <= 50.0] <- 41.0
  data$S1550401[51.0 <= data$S1550401 & data$S1550401 <= 60.0] <- 51.0
  data$S1550401[61.0 <= data$S1550401 & data$S1550401 <= 80.0] <- 61.0
  data$S1550401[81.0 <= data$S1550401 & data$S1550401 <= 100.0] <- 81.0
  data$S1550401[101.0 <= data$S1550401 & data$S1550401 <= 168.0] <- 101.0
  data$S1550401 <- factor(data$S1550401, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$S1564300 <- factor(data$S1564300, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$S1601900[170.0 <= data$S1601900 & data$S1601900 <= 290.0] <- 170.0
  data$S1601900[370.0 <= data$S1601900 & data$S1601900 <= 490.0] <- 370.0
  data$S1601900[570.0 <= data$S1601900 & data$S1601900 <= 690.0] <- 570.0
  data$S1601900[1070.0 <= data$S1601900 & data$S1601900 <= 3990.0] <- 1070.0
  data$S1601900[4070.0 <= data$S1601900 & data$S1601900 <= 4590.0] <- 4070.0
  data$S1601900[4670.0 <= data$S1601900 & data$S1601900 <= 5790.0] <- 4670.0
  data$S1601900[6070.0 <= data$S1601900 & data$S1601900 <= 6390.0] <- 6070.0
  data$S1601900[6470.0 <= data$S1601900 & data$S1601900 <= 6780.0] <- 6470.0
  data$S1601900[6870.0 <= data$S1601900 & data$S1601900 <= 7190.0] <- 6870.0
  data$S1601900[7270.0 <= data$S1601900 & data$S1601900 <= 7790.0] <- 7270.0
  data$S1601900[7860.0 <= data$S1601900 & data$S1601900 <= 8470.0] <- 7860.0
  data$S1601900[8560.0 <= data$S1601900 & data$S1601900 <= 8690.0] <- 8560.0
  data$S1601900[8770.0 <= data$S1601900 & data$S1601900 <= 9290.0] <- 8770.0
  data$S1601900[9370.0 <= data$S1601900 & data$S1601900 <= 9590.0] <- 9370.0
  data$S1601900[9670.0 <= data$S1601900 & data$S1601900 <= 9890.0] <- 9670.0
  data$S1601900[9950.0 <= data$S1601900 & data$S1601900 <= 9990.0] <- 9950.0
  data$S1601900 <- factor(data$S1601900, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S1603000[10.0 <= data$S1603000 & data$S1603000 <= 430.0] <- 10.0
  data$S1603000[500.0 <= data$S1603000 & data$S1603000 <= 950.0] <- 500.0
  data$S1603000[1000.0 <= data$S1603000 & data$S1603000 <= 1240.0] <- 1000.0
  data$S1603000[1300.0 <= data$S1603000 & data$S1603000 <= 1530.0] <- 1300.0
  data$S1603000[1540.0 <= data$S1603000 & data$S1603000 <= 1560.0] <- 1540.0
  data$S1603000[1600.0 <= data$S1603000 & data$S1603000 <= 1760.0] <- 1600.0
  data$S1603000[1800.0 <= data$S1603000 & data$S1603000 <= 1860.0] <- 1800.0
  data$S1603000[1900.0 <= data$S1603000 & data$S1603000 <= 1960.0] <- 1900.0
  data$S1603000[2000.0 <= data$S1603000 & data$S1603000 <= 2060.0] <- 2000.0
  data$S1603000[2100.0 <= data$S1603000 & data$S1603000 <= 2150.0] <- 2100.0
  data$S1603000[2200.0 <= data$S1603000 & data$S1603000 <= 2340.0] <- 2200.0
  data$S1603000[2400.0 <= data$S1603000 & data$S1603000 <= 2550.0] <- 2400.0
  data$S1603000[2600.0 <= data$S1603000 & data$S1603000 <= 2760.0] <- 2600.0
  data$S1603000[2800.0 <= data$S1603000 & data$S1603000 <= 2960.0] <- 2800.0
  data$S1603000[3000.0 <= data$S1603000 & data$S1603000 <= 3260.0] <- 3000.0
  data$S1603000[3300.0 <= data$S1603000 & data$S1603000 <= 3650.0] <- 3300.0
  data$S1603000[3700.0 <= data$S1603000 & data$S1603000 <= 3950.0] <- 3700.0
  data$S1603000[4000.0 <= data$S1603000 & data$S1603000 <= 4160.0] <- 4000.0
  data$S1603000[4200.0 <= data$S1603000 & data$S1603000 <= 4250.0] <- 4200.0
  data$S1603000[4300.0 <= data$S1603000 & data$S1603000 <= 4430.0] <- 4300.0
  data$S1603000[4500.0 <= data$S1603000 & data$S1603000 <= 4650.0] <- 4500.0
  data$S1603000[4700.0 <= data$S1603000 & data$S1603000 <= 4960.0] <- 4700.0
  data$S1603000[5000.0 <= data$S1603000 & data$S1603000 <= 5930.0] <- 5000.0
  data$S1603000[6000.0 <= data$S1603000 & data$S1603000 <= 6130.0] <- 6000.0
  data$S1603000[6200.0 <= data$S1603000 & data$S1603000 <= 6940.0] <- 6200.0
  data$S1603000[7000.0 <= data$S1603000 & data$S1603000 <= 7620.0] <- 7000.0
  data$S1603000[7700.0 <= data$S1603000 & data$S1603000 <= 7750.0] <- 7700.0
  data$S1603000[7800.0 <= data$S1603000 & data$S1603000 <= 7850.0] <- 7800.0
  data$S1603000[7900.0 <= data$S1603000 & data$S1603000 <= 8960.0] <- 7900.0
  data$S1603000[9000.0 <= data$S1603000 & data$S1603000 <= 9750.0] <- 9000.0
  data$S1603000[9800.0 <= data$S1603000 & data$S1603000 <= 9840.0] <- 9800.0
  data$S1603000[9950.0 <= data$S1603000 & data$S1603000 <= 9990.0] <- 9950.0
  data$S1603000 <- factor(data$S1603000, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S2005400 <- factor(data$S2005400, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$S2011401 <- factor(data$S2011401, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "UNGRADED"))
  data$S2020301[0.0 <= data$S2020301 & data$S2020301 <= 10.0] <- 0.0
  data$S2020301[11.0 <= data$S2020301 & data$S2020301 <= 20.0] <- 11.0
  data$S2020301[21.0 <= data$S2020301 & data$S2020301 <= 30.0] <- 21.0
  data$S2020301[31.0 <= data$S2020301 & data$S2020301 <= 35.0] <- 31.0
  data$S2020301[36.0 <= data$S2020301 & data$S2020301 <= 40.0] <- 36.0
  data$S2020301[41.0 <= data$S2020301 & data$S2020301 <= 50.0] <- 41.0
  data$S2020301[51.0 <= data$S2020301 & data$S2020301 <= 60.0] <- 51.0
  data$S2020301[61.0 <= data$S2020301 & data$S2020301 <= 80.0] <- 61.0
  data$S2020301[81.0 <= data$S2020301 & data$S2020301 <= 100.0] <- 81.0
  data$S2020301[101.0 <= data$S2020301 & data$S2020301 <= 168.0] <- 101.0
  data$S2020301 <- factor(data$S2020301, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$S2034400 <- factor(data$S2034400, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$S2887000 <- factor(data$S2887000, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S2894400 <- factor(data$S2894400, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$S3582600 <- factor(data$S3582600, 
    levels=c(0.0,1.0), 
    labels=c("CONDITION DOES NOT APPLY",
      "CONDITION APPLIES"))
  data$S3585900 <- factor(data$S3585900, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S3658000[170.0 <= data$S3658000 & data$S3658000 <= 290.0] <- 170.0
  data$S3658000[370.0 <= data$S3658000 & data$S3658000 <= 490.0] <- 370.0
  data$S3658000[570.0 <= data$S3658000 & data$S3658000 <= 690.0] <- 570.0
  data$S3658000[1070.0 <= data$S3658000 & data$S3658000 <= 3990.0] <- 1070.0
  data$S3658000[4070.0 <= data$S3658000 & data$S3658000 <= 4590.0] <- 4070.0
  data$S3658000[4670.0 <= data$S3658000 & data$S3658000 <= 5790.0] <- 4670.0
  data$S3658000[6070.0 <= data$S3658000 & data$S3658000 <= 6390.0] <- 6070.0
  data$S3658000[6470.0 <= data$S3658000 & data$S3658000 <= 6780.0] <- 6470.0
  data$S3658000[6870.0 <= data$S3658000 & data$S3658000 <= 7190.0] <- 6870.0
  data$S3658000[7270.0 <= data$S3658000 & data$S3658000 <= 7790.0] <- 7270.0
  data$S3658000[7860.0 <= data$S3658000 & data$S3658000 <= 8470.0] <- 7860.0
  data$S3658000[8560.0 <= data$S3658000 & data$S3658000 <= 8690.0] <- 8560.0
  data$S3658000[8770.0 <= data$S3658000 & data$S3658000 <= 9290.0] <- 8770.0
  data$S3658000[9370.0 <= data$S3658000 & data$S3658000 <= 9590.0] <- 9370.0
  data$S3658000[9670.0 <= data$S3658000 & data$S3658000 <= 9890.0] <- 9670.0
  data$S3658000[9950.0 <= data$S3658000 & data$S3658000 <= 9990.0] <- 9950.0
  data$S3658000 <- factor(data$S3658000, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S3659000[10.0 <= data$S3659000 & data$S3659000 <= 430.0] <- 10.0
  data$S3659000[500.0 <= data$S3659000 & data$S3659000 <= 950.0] <- 500.0
  data$S3659000[1000.0 <= data$S3659000 & data$S3659000 <= 1240.0] <- 1000.0
  data$S3659000[1300.0 <= data$S3659000 & data$S3659000 <= 1530.0] <- 1300.0
  data$S3659000[1540.0 <= data$S3659000 & data$S3659000 <= 1560.0] <- 1540.0
  data$S3659000[1600.0 <= data$S3659000 & data$S3659000 <= 1760.0] <- 1600.0
  data$S3659000[1800.0 <= data$S3659000 & data$S3659000 <= 1860.0] <- 1800.0
  data$S3659000[1900.0 <= data$S3659000 & data$S3659000 <= 1960.0] <- 1900.0
  data$S3659000[2000.0 <= data$S3659000 & data$S3659000 <= 2060.0] <- 2000.0
  data$S3659000[2100.0 <= data$S3659000 & data$S3659000 <= 2150.0] <- 2100.0
  data$S3659000[2200.0 <= data$S3659000 & data$S3659000 <= 2340.0] <- 2200.0
  data$S3659000[2400.0 <= data$S3659000 & data$S3659000 <= 2550.0] <- 2400.0
  data$S3659000[2600.0 <= data$S3659000 & data$S3659000 <= 2760.0] <- 2600.0
  data$S3659000[2800.0 <= data$S3659000 & data$S3659000 <= 2960.0] <- 2800.0
  data$S3659000[3000.0 <= data$S3659000 & data$S3659000 <= 3260.0] <- 3000.0
  data$S3659000[3300.0 <= data$S3659000 & data$S3659000 <= 3650.0] <- 3300.0
  data$S3659000[3700.0 <= data$S3659000 & data$S3659000 <= 3950.0] <- 3700.0
  data$S3659000[4000.0 <= data$S3659000 & data$S3659000 <= 4160.0] <- 4000.0
  data$S3659000[4200.0 <= data$S3659000 & data$S3659000 <= 4250.0] <- 4200.0
  data$S3659000[4300.0 <= data$S3659000 & data$S3659000 <= 4430.0] <- 4300.0
  data$S3659000[4500.0 <= data$S3659000 & data$S3659000 <= 4650.0] <- 4500.0
  data$S3659000[4700.0 <= data$S3659000 & data$S3659000 <= 4960.0] <- 4700.0
  data$S3659000[5000.0 <= data$S3659000 & data$S3659000 <= 5930.0] <- 5000.0
  data$S3659000[6000.0 <= data$S3659000 & data$S3659000 <= 6130.0] <- 6000.0
  data$S3659000[6200.0 <= data$S3659000 & data$S3659000 <= 6940.0] <- 6200.0
  data$S3659000[7000.0 <= data$S3659000 & data$S3659000 <= 7620.0] <- 7000.0
  data$S3659000[7700.0 <= data$S3659000 & data$S3659000 <= 7750.0] <- 7700.0
  data$S3659000[7800.0 <= data$S3659000 & data$S3659000 <= 7850.0] <- 7800.0
  data$S3659000[7900.0 <= data$S3659000 & data$S3659000 <= 8960.0] <- 7900.0
  data$S3659000[9000.0 <= data$S3659000 & data$S3659000 <= 9750.0] <- 9000.0
  data$S3659000[9800.0 <= data$S3659000 & data$S3659000 <= 9840.0] <- 9800.0
  data$S3659000[9950.0 <= data$S3659000 & data$S3659000 <= 9990.0] <- 9950.0
  data$S3659000 <- factor(data$S3659000, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S3679000[170.0 <= data$S3679000 & data$S3679000 <= 290.0] <- 170.0
  data$S3679000[370.0 <= data$S3679000 & data$S3679000 <= 490.0] <- 370.0
  data$S3679000[570.0 <= data$S3679000 & data$S3679000 <= 690.0] <- 570.0
  data$S3679000[1070.0 <= data$S3679000 & data$S3679000 <= 3990.0] <- 1070.0
  data$S3679000[4070.0 <= data$S3679000 & data$S3679000 <= 4590.0] <- 4070.0
  data$S3679000[4670.0 <= data$S3679000 & data$S3679000 <= 5790.0] <- 4670.0
  data$S3679000[6070.0 <= data$S3679000 & data$S3679000 <= 6390.0] <- 6070.0
  data$S3679000[6470.0 <= data$S3679000 & data$S3679000 <= 6780.0] <- 6470.0
  data$S3679000[6870.0 <= data$S3679000 & data$S3679000 <= 7190.0] <- 6870.0
  data$S3679000[7270.0 <= data$S3679000 & data$S3679000 <= 7790.0] <- 7270.0
  data$S3679000[7860.0 <= data$S3679000 & data$S3679000 <= 8470.0] <- 7860.0
  data$S3679000[8560.0 <= data$S3679000 & data$S3679000 <= 8690.0] <- 8560.0
  data$S3679000[8770.0 <= data$S3679000 & data$S3679000 <= 9290.0] <- 8770.0
  data$S3679000[9370.0 <= data$S3679000 & data$S3679000 <= 9590.0] <- 9370.0
  data$S3679000[9670.0 <= data$S3679000 & data$S3679000 <= 9890.0] <- 9670.0
  data$S3679000[9950.0 <= data$S3679000 & data$S3679000 <= 9990.0] <- 9950.0
  data$S3679000 <- factor(data$S3679000, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S3681000[10.0 <= data$S3681000 & data$S3681000 <= 430.0] <- 10.0
  data$S3681000[500.0 <= data$S3681000 & data$S3681000 <= 950.0] <- 500.0
  data$S3681000[1000.0 <= data$S3681000 & data$S3681000 <= 1240.0] <- 1000.0
  data$S3681000[1300.0 <= data$S3681000 & data$S3681000 <= 1530.0] <- 1300.0
  data$S3681000[1540.0 <= data$S3681000 & data$S3681000 <= 1560.0] <- 1540.0
  data$S3681000[1600.0 <= data$S3681000 & data$S3681000 <= 1760.0] <- 1600.0
  data$S3681000[1800.0 <= data$S3681000 & data$S3681000 <= 1860.0] <- 1800.0
  data$S3681000[1900.0 <= data$S3681000 & data$S3681000 <= 1960.0] <- 1900.0
  data$S3681000[2000.0 <= data$S3681000 & data$S3681000 <= 2060.0] <- 2000.0
  data$S3681000[2100.0 <= data$S3681000 & data$S3681000 <= 2150.0] <- 2100.0
  data$S3681000[2200.0 <= data$S3681000 & data$S3681000 <= 2340.0] <- 2200.0
  data$S3681000[2400.0 <= data$S3681000 & data$S3681000 <= 2550.0] <- 2400.0
  data$S3681000[2600.0 <= data$S3681000 & data$S3681000 <= 2760.0] <- 2600.0
  data$S3681000[2800.0 <= data$S3681000 & data$S3681000 <= 2960.0] <- 2800.0
  data$S3681000[3000.0 <= data$S3681000 & data$S3681000 <= 3260.0] <- 3000.0
  data$S3681000[3300.0 <= data$S3681000 & data$S3681000 <= 3650.0] <- 3300.0
  data$S3681000[3700.0 <= data$S3681000 & data$S3681000 <= 3950.0] <- 3700.0
  data$S3681000[4000.0 <= data$S3681000 & data$S3681000 <= 4160.0] <- 4000.0
  data$S3681000[4200.0 <= data$S3681000 & data$S3681000 <= 4250.0] <- 4200.0
  data$S3681000[4300.0 <= data$S3681000 & data$S3681000 <= 4430.0] <- 4300.0
  data$S3681000[4500.0 <= data$S3681000 & data$S3681000 <= 4650.0] <- 4500.0
  data$S3681000[4700.0 <= data$S3681000 & data$S3681000 <= 4960.0] <- 4700.0
  data$S3681000[5000.0 <= data$S3681000 & data$S3681000 <= 5930.0] <- 5000.0
  data$S3681000[6000.0 <= data$S3681000 & data$S3681000 <= 6130.0] <- 6000.0
  data$S3681000[6200.0 <= data$S3681000 & data$S3681000 <= 6940.0] <- 6200.0
  data$S3681000[7000.0 <= data$S3681000 & data$S3681000 <= 7620.0] <- 7000.0
  data$S3681000[7700.0 <= data$S3681000 & data$S3681000 <= 7750.0] <- 7700.0
  data$S3681000[7800.0 <= data$S3681000 & data$S3681000 <= 7850.0] <- 7800.0
  data$S3681000[7900.0 <= data$S3681000 & data$S3681000 <= 8960.0] <- 7900.0
  data$S3681000[9000.0 <= data$S3681000 & data$S3681000 <= 9750.0] <- 9000.0
  data$S3681000[9800.0 <= data$S3681000 & data$S3681000 <= 9840.0] <- 9800.0
  data$S3681000[9950.0 <= data$S3681000 & data$S3681000 <= 9990.0] <- 9950.0
  data$S3681000 <- factor(data$S3681000, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S3695000[170.0 <= data$S3695000 & data$S3695000 <= 290.0] <- 170.0
  data$S3695000[370.0 <= data$S3695000 & data$S3695000 <= 490.0] <- 370.0
  data$S3695000[570.0 <= data$S3695000 & data$S3695000 <= 690.0] <- 570.0
  data$S3695000[1070.0 <= data$S3695000 & data$S3695000 <= 3990.0] <- 1070.0
  data$S3695000[4070.0 <= data$S3695000 & data$S3695000 <= 4590.0] <- 4070.0
  data$S3695000[4670.0 <= data$S3695000 & data$S3695000 <= 5790.0] <- 4670.0
  data$S3695000[6070.0 <= data$S3695000 & data$S3695000 <= 6390.0] <- 6070.0
  data$S3695000[6470.0 <= data$S3695000 & data$S3695000 <= 6780.0] <- 6470.0
  data$S3695000[6870.0 <= data$S3695000 & data$S3695000 <= 7190.0] <- 6870.0
  data$S3695000[7270.0 <= data$S3695000 & data$S3695000 <= 7790.0] <- 7270.0
  data$S3695000[7860.0 <= data$S3695000 & data$S3695000 <= 8470.0] <- 7860.0
  data$S3695000[8560.0 <= data$S3695000 & data$S3695000 <= 8690.0] <- 8560.0
  data$S3695000[8770.0 <= data$S3695000 & data$S3695000 <= 9290.0] <- 8770.0
  data$S3695000[9370.0 <= data$S3695000 & data$S3695000 <= 9590.0] <- 9370.0
  data$S3695000[9670.0 <= data$S3695000 & data$S3695000 <= 9890.0] <- 9670.0
  data$S3695000[9950.0 <= data$S3695000 & data$S3695000 <= 9990.0] <- 9950.0
  data$S3695000 <- factor(data$S3695000, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S3697000[10.0 <= data$S3697000 & data$S3697000 <= 430.0] <- 10.0
  data$S3697000[500.0 <= data$S3697000 & data$S3697000 <= 950.0] <- 500.0
  data$S3697000[1000.0 <= data$S3697000 & data$S3697000 <= 1240.0] <- 1000.0
  data$S3697000[1300.0 <= data$S3697000 & data$S3697000 <= 1530.0] <- 1300.0
  data$S3697000[1540.0 <= data$S3697000 & data$S3697000 <= 1560.0] <- 1540.0
  data$S3697000[1600.0 <= data$S3697000 & data$S3697000 <= 1760.0] <- 1600.0
  data$S3697000[1800.0 <= data$S3697000 & data$S3697000 <= 1860.0] <- 1800.0
  data$S3697000[1900.0 <= data$S3697000 & data$S3697000 <= 1960.0] <- 1900.0
  data$S3697000[2000.0 <= data$S3697000 & data$S3697000 <= 2060.0] <- 2000.0
  data$S3697000[2100.0 <= data$S3697000 & data$S3697000 <= 2150.0] <- 2100.0
  data$S3697000[2200.0 <= data$S3697000 & data$S3697000 <= 2340.0] <- 2200.0
  data$S3697000[2400.0 <= data$S3697000 & data$S3697000 <= 2550.0] <- 2400.0
  data$S3697000[2600.0 <= data$S3697000 & data$S3697000 <= 2760.0] <- 2600.0
  data$S3697000[2800.0 <= data$S3697000 & data$S3697000 <= 2960.0] <- 2800.0
  data$S3697000[3000.0 <= data$S3697000 & data$S3697000 <= 3260.0] <- 3000.0
  data$S3697000[3300.0 <= data$S3697000 & data$S3697000 <= 3650.0] <- 3300.0
  data$S3697000[3700.0 <= data$S3697000 & data$S3697000 <= 3950.0] <- 3700.0
  data$S3697000[4000.0 <= data$S3697000 & data$S3697000 <= 4160.0] <- 4000.0
  data$S3697000[4200.0 <= data$S3697000 & data$S3697000 <= 4250.0] <- 4200.0
  data$S3697000[4300.0 <= data$S3697000 & data$S3697000 <= 4430.0] <- 4300.0
  data$S3697000[4500.0 <= data$S3697000 & data$S3697000 <= 4650.0] <- 4500.0
  data$S3697000[4700.0 <= data$S3697000 & data$S3697000 <= 4960.0] <- 4700.0
  data$S3697000[5000.0 <= data$S3697000 & data$S3697000 <= 5930.0] <- 5000.0
  data$S3697000[6000.0 <= data$S3697000 & data$S3697000 <= 6130.0] <- 6000.0
  data$S3697000[6200.0 <= data$S3697000 & data$S3697000 <= 6940.0] <- 6200.0
  data$S3697000[7000.0 <= data$S3697000 & data$S3697000 <= 7620.0] <- 7000.0
  data$S3697000[7700.0 <= data$S3697000 & data$S3697000 <= 7750.0] <- 7700.0
  data$S3697000[7800.0 <= data$S3697000 & data$S3697000 <= 7850.0] <- 7800.0
  data$S3697000[7900.0 <= data$S3697000 & data$S3697000 <= 8960.0] <- 7900.0
  data$S3697000[9000.0 <= data$S3697000 & data$S3697000 <= 9750.0] <- 9000.0
  data$S3697000[9800.0 <= data$S3697000 & data$S3697000 <= 9840.0] <- 9800.0
  data$S3697000[9950.0 <= data$S3697000 & data$S3697000 <= 9990.0] <- 9950.0
  data$S3697000 <- factor(data$S3697000, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S3711000[170.0 <= data$S3711000 & data$S3711000 <= 290.0] <- 170.0
  data$S3711000[370.0 <= data$S3711000 & data$S3711000 <= 490.0] <- 370.0
  data$S3711000[570.0 <= data$S3711000 & data$S3711000 <= 690.0] <- 570.0
  data$S3711000[1070.0 <= data$S3711000 & data$S3711000 <= 3990.0] <- 1070.0
  data$S3711000[4070.0 <= data$S3711000 & data$S3711000 <= 4590.0] <- 4070.0
  data$S3711000[4670.0 <= data$S3711000 & data$S3711000 <= 5790.0] <- 4670.0
  data$S3711000[6070.0 <= data$S3711000 & data$S3711000 <= 6390.0] <- 6070.0
  data$S3711000[6470.0 <= data$S3711000 & data$S3711000 <= 6780.0] <- 6470.0
  data$S3711000[6870.0 <= data$S3711000 & data$S3711000 <= 7190.0] <- 6870.0
  data$S3711000[7270.0 <= data$S3711000 & data$S3711000 <= 7790.0] <- 7270.0
  data$S3711000[7860.0 <= data$S3711000 & data$S3711000 <= 8470.0] <- 7860.0
  data$S3711000[8560.0 <= data$S3711000 & data$S3711000 <= 8690.0] <- 8560.0
  data$S3711000[8770.0 <= data$S3711000 & data$S3711000 <= 9290.0] <- 8770.0
  data$S3711000[9370.0 <= data$S3711000 & data$S3711000 <= 9590.0] <- 9370.0
  data$S3711000[9670.0 <= data$S3711000 & data$S3711000 <= 9890.0] <- 9670.0
  data$S3711000[9950.0 <= data$S3711000 & data$S3711000 <= 9990.0] <- 9950.0
  data$S3711000 <- factor(data$S3711000, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S3713000[10.0 <= data$S3713000 & data$S3713000 <= 430.0] <- 10.0
  data$S3713000[500.0 <= data$S3713000 & data$S3713000 <= 950.0] <- 500.0
  data$S3713000[1000.0 <= data$S3713000 & data$S3713000 <= 1240.0] <- 1000.0
  data$S3713000[1300.0 <= data$S3713000 & data$S3713000 <= 1530.0] <- 1300.0
  data$S3713000[1540.0 <= data$S3713000 & data$S3713000 <= 1560.0] <- 1540.0
  data$S3713000[1600.0 <= data$S3713000 & data$S3713000 <= 1760.0] <- 1600.0
  data$S3713000[1800.0 <= data$S3713000 & data$S3713000 <= 1860.0] <- 1800.0
  data$S3713000[1900.0 <= data$S3713000 & data$S3713000 <= 1960.0] <- 1900.0
  data$S3713000[2000.0 <= data$S3713000 & data$S3713000 <= 2060.0] <- 2000.0
  data$S3713000[2100.0 <= data$S3713000 & data$S3713000 <= 2150.0] <- 2100.0
  data$S3713000[2200.0 <= data$S3713000 & data$S3713000 <= 2340.0] <- 2200.0
  data$S3713000[2400.0 <= data$S3713000 & data$S3713000 <= 2550.0] <- 2400.0
  data$S3713000[2600.0 <= data$S3713000 & data$S3713000 <= 2760.0] <- 2600.0
  data$S3713000[2800.0 <= data$S3713000 & data$S3713000 <= 2960.0] <- 2800.0
  data$S3713000[3000.0 <= data$S3713000 & data$S3713000 <= 3260.0] <- 3000.0
  data$S3713000[3300.0 <= data$S3713000 & data$S3713000 <= 3650.0] <- 3300.0
  data$S3713000[3700.0 <= data$S3713000 & data$S3713000 <= 3950.0] <- 3700.0
  data$S3713000[4000.0 <= data$S3713000 & data$S3713000 <= 4160.0] <- 4000.0
  data$S3713000[4200.0 <= data$S3713000 & data$S3713000 <= 4250.0] <- 4200.0
  data$S3713000[4300.0 <= data$S3713000 & data$S3713000 <= 4430.0] <- 4300.0
  data$S3713000[4500.0 <= data$S3713000 & data$S3713000 <= 4650.0] <- 4500.0
  data$S3713000[4700.0 <= data$S3713000 & data$S3713000 <= 4960.0] <- 4700.0
  data$S3713000[5000.0 <= data$S3713000 & data$S3713000 <= 5930.0] <- 5000.0
  data$S3713000[6000.0 <= data$S3713000 & data$S3713000 <= 6130.0] <- 6000.0
  data$S3713000[6200.0 <= data$S3713000 & data$S3713000 <= 6940.0] <- 6200.0
  data$S3713000[7000.0 <= data$S3713000 & data$S3713000 <= 7620.0] <- 7000.0
  data$S3713000[7700.0 <= data$S3713000 & data$S3713000 <= 7750.0] <- 7700.0
  data$S3713000[7800.0 <= data$S3713000 & data$S3713000 <= 7850.0] <- 7800.0
  data$S3713000[7900.0 <= data$S3713000 & data$S3713000 <= 8960.0] <- 7900.0
  data$S3713000[9000.0 <= data$S3713000 & data$S3713000 <= 9750.0] <- 9000.0
  data$S3713000[9800.0 <= data$S3713000 & data$S3713000 <= 9840.0] <- 9800.0
  data$S3713000[9950.0 <= data$S3713000 & data$S3713000 <= 9990.0] <- 9950.0
  data$S3713000 <- factor(data$S3713000, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S3727000[170.0 <= data$S3727000 & data$S3727000 <= 290.0] <- 170.0
  data$S3727000[370.0 <= data$S3727000 & data$S3727000 <= 490.0] <- 370.0
  data$S3727000[570.0 <= data$S3727000 & data$S3727000 <= 690.0] <- 570.0
  data$S3727000[1070.0 <= data$S3727000 & data$S3727000 <= 3990.0] <- 1070.0
  data$S3727000[4070.0 <= data$S3727000 & data$S3727000 <= 4590.0] <- 4070.0
  data$S3727000[4670.0 <= data$S3727000 & data$S3727000 <= 5790.0] <- 4670.0
  data$S3727000[6070.0 <= data$S3727000 & data$S3727000 <= 6390.0] <- 6070.0
  data$S3727000[6470.0 <= data$S3727000 & data$S3727000 <= 6780.0] <- 6470.0
  data$S3727000[6870.0 <= data$S3727000 & data$S3727000 <= 7190.0] <- 6870.0
  data$S3727000[7270.0 <= data$S3727000 & data$S3727000 <= 7790.0] <- 7270.0
  data$S3727000[7860.0 <= data$S3727000 & data$S3727000 <= 8470.0] <- 7860.0
  data$S3727000[8560.0 <= data$S3727000 & data$S3727000 <= 8690.0] <- 8560.0
  data$S3727000[8770.0 <= data$S3727000 & data$S3727000 <= 9290.0] <- 8770.0
  data$S3727000[9370.0 <= data$S3727000 & data$S3727000 <= 9590.0] <- 9370.0
  data$S3727000[9670.0 <= data$S3727000 & data$S3727000 <= 9890.0] <- 9670.0
  data$S3727000[9950.0 <= data$S3727000 & data$S3727000 <= 9990.0] <- 9950.0
  data$S3727000 <- factor(data$S3727000, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S3729000[10.0 <= data$S3729000 & data$S3729000 <= 430.0] <- 10.0
  data$S3729000[500.0 <= data$S3729000 & data$S3729000 <= 950.0] <- 500.0
  data$S3729000[1000.0 <= data$S3729000 & data$S3729000 <= 1240.0] <- 1000.0
  data$S3729000[1300.0 <= data$S3729000 & data$S3729000 <= 1530.0] <- 1300.0
  data$S3729000[1540.0 <= data$S3729000 & data$S3729000 <= 1560.0] <- 1540.0
  data$S3729000[1600.0 <= data$S3729000 & data$S3729000 <= 1760.0] <- 1600.0
  data$S3729000[1800.0 <= data$S3729000 & data$S3729000 <= 1860.0] <- 1800.0
  data$S3729000[1900.0 <= data$S3729000 & data$S3729000 <= 1960.0] <- 1900.0
  data$S3729000[2000.0 <= data$S3729000 & data$S3729000 <= 2060.0] <- 2000.0
  data$S3729000[2100.0 <= data$S3729000 & data$S3729000 <= 2150.0] <- 2100.0
  data$S3729000[2200.0 <= data$S3729000 & data$S3729000 <= 2340.0] <- 2200.0
  data$S3729000[2400.0 <= data$S3729000 & data$S3729000 <= 2550.0] <- 2400.0
  data$S3729000[2600.0 <= data$S3729000 & data$S3729000 <= 2760.0] <- 2600.0
  data$S3729000[2800.0 <= data$S3729000 & data$S3729000 <= 2960.0] <- 2800.0
  data$S3729000[3000.0 <= data$S3729000 & data$S3729000 <= 3260.0] <- 3000.0
  data$S3729000[3300.0 <= data$S3729000 & data$S3729000 <= 3650.0] <- 3300.0
  data$S3729000[3700.0 <= data$S3729000 & data$S3729000 <= 3950.0] <- 3700.0
  data$S3729000[4000.0 <= data$S3729000 & data$S3729000 <= 4160.0] <- 4000.0
  data$S3729000[4200.0 <= data$S3729000 & data$S3729000 <= 4250.0] <- 4200.0
  data$S3729000[4300.0 <= data$S3729000 & data$S3729000 <= 4430.0] <- 4300.0
  data$S3729000[4500.0 <= data$S3729000 & data$S3729000 <= 4650.0] <- 4500.0
  data$S3729000[4700.0 <= data$S3729000 & data$S3729000 <= 4960.0] <- 4700.0
  data$S3729000[5000.0 <= data$S3729000 & data$S3729000 <= 5930.0] <- 5000.0
  data$S3729000[6000.0 <= data$S3729000 & data$S3729000 <= 6130.0] <- 6000.0
  data$S3729000[6200.0 <= data$S3729000 & data$S3729000 <= 6940.0] <- 6200.0
  data$S3729000[7000.0 <= data$S3729000 & data$S3729000 <= 7620.0] <- 7000.0
  data$S3729000[7700.0 <= data$S3729000 & data$S3729000 <= 7750.0] <- 7700.0
  data$S3729000[7800.0 <= data$S3729000 & data$S3729000 <= 7850.0] <- 7800.0
  data$S3729000[7900.0 <= data$S3729000 & data$S3729000 <= 8960.0] <- 7900.0
  data$S3729000[9000.0 <= data$S3729000 & data$S3729000 <= 9750.0] <- 9000.0
  data$S3729000[9800.0 <= data$S3729000 & data$S3729000 <= 9840.0] <- 9800.0
  data$S3729000[9950.0 <= data$S3729000 & data$S3729000 <= 9990.0] <- 9950.0
  data$S3729000 <- factor(data$S3729000, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S3755000[170.0 <= data$S3755000 & data$S3755000 <= 290.0] <- 170.0
  data$S3755000[370.0 <= data$S3755000 & data$S3755000 <= 490.0] <- 370.0
  data$S3755000[570.0 <= data$S3755000 & data$S3755000 <= 690.0] <- 570.0
  data$S3755000[1070.0 <= data$S3755000 & data$S3755000 <= 3990.0] <- 1070.0
  data$S3755000[4070.0 <= data$S3755000 & data$S3755000 <= 4590.0] <- 4070.0
  data$S3755000[4670.0 <= data$S3755000 & data$S3755000 <= 5790.0] <- 4670.0
  data$S3755000[6070.0 <= data$S3755000 & data$S3755000 <= 6390.0] <- 6070.0
  data$S3755000[6470.0 <= data$S3755000 & data$S3755000 <= 6780.0] <- 6470.0
  data$S3755000[6870.0 <= data$S3755000 & data$S3755000 <= 7190.0] <- 6870.0
  data$S3755000[7270.0 <= data$S3755000 & data$S3755000 <= 7790.0] <- 7270.0
  data$S3755000[7860.0 <= data$S3755000 & data$S3755000 <= 8470.0] <- 7860.0
  data$S3755000[8560.0 <= data$S3755000 & data$S3755000 <= 8690.0] <- 8560.0
  data$S3755000[8770.0 <= data$S3755000 & data$S3755000 <= 9290.0] <- 8770.0
  data$S3755000[9370.0 <= data$S3755000 & data$S3755000 <= 9590.0] <- 9370.0
  data$S3755000[9670.0 <= data$S3755000 & data$S3755000 <= 9890.0] <- 9670.0
  data$S3755000[9950.0 <= data$S3755000 & data$S3755000 <= 9990.0] <- 9950.0
  data$S3755000 <- factor(data$S3755000, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S3757000[10.0 <= data$S3757000 & data$S3757000 <= 430.0] <- 10.0
  data$S3757000[500.0 <= data$S3757000 & data$S3757000 <= 950.0] <- 500.0
  data$S3757000[1000.0 <= data$S3757000 & data$S3757000 <= 1240.0] <- 1000.0
  data$S3757000[1300.0 <= data$S3757000 & data$S3757000 <= 1530.0] <- 1300.0
  data$S3757000[1540.0 <= data$S3757000 & data$S3757000 <= 1560.0] <- 1540.0
  data$S3757000[1600.0 <= data$S3757000 & data$S3757000 <= 1760.0] <- 1600.0
  data$S3757000[1800.0 <= data$S3757000 & data$S3757000 <= 1860.0] <- 1800.0
  data$S3757000[1900.0 <= data$S3757000 & data$S3757000 <= 1960.0] <- 1900.0
  data$S3757000[2000.0 <= data$S3757000 & data$S3757000 <= 2060.0] <- 2000.0
  data$S3757000[2100.0 <= data$S3757000 & data$S3757000 <= 2150.0] <- 2100.0
  data$S3757000[2200.0 <= data$S3757000 & data$S3757000 <= 2340.0] <- 2200.0
  data$S3757000[2400.0 <= data$S3757000 & data$S3757000 <= 2550.0] <- 2400.0
  data$S3757000[2600.0 <= data$S3757000 & data$S3757000 <= 2760.0] <- 2600.0
  data$S3757000[2800.0 <= data$S3757000 & data$S3757000 <= 2960.0] <- 2800.0
  data$S3757000[3000.0 <= data$S3757000 & data$S3757000 <= 3260.0] <- 3000.0
  data$S3757000[3300.0 <= data$S3757000 & data$S3757000 <= 3650.0] <- 3300.0
  data$S3757000[3700.0 <= data$S3757000 & data$S3757000 <= 3950.0] <- 3700.0
  data$S3757000[4000.0 <= data$S3757000 & data$S3757000 <= 4160.0] <- 4000.0
  data$S3757000[4200.0 <= data$S3757000 & data$S3757000 <= 4250.0] <- 4200.0
  data$S3757000[4300.0 <= data$S3757000 & data$S3757000 <= 4430.0] <- 4300.0
  data$S3757000[4500.0 <= data$S3757000 & data$S3757000 <= 4650.0] <- 4500.0
  data$S3757000[4700.0 <= data$S3757000 & data$S3757000 <= 4960.0] <- 4700.0
  data$S3757000[5000.0 <= data$S3757000 & data$S3757000 <= 5930.0] <- 5000.0
  data$S3757000[6000.0 <= data$S3757000 & data$S3757000 <= 6130.0] <- 6000.0
  data$S3757000[6200.0 <= data$S3757000 & data$S3757000 <= 6940.0] <- 6200.0
  data$S3757000[7000.0 <= data$S3757000 & data$S3757000 <= 7620.0] <- 7000.0
  data$S3757000[7700.0 <= data$S3757000 & data$S3757000 <= 7750.0] <- 7700.0
  data$S3757000[7800.0 <= data$S3757000 & data$S3757000 <= 7850.0] <- 7800.0
  data$S3757000[7900.0 <= data$S3757000 & data$S3757000 <= 8960.0] <- 7900.0
  data$S3757000[9000.0 <= data$S3757000 & data$S3757000 <= 9750.0] <- 9000.0
  data$S3757000[9800.0 <= data$S3757000 & data$S3757000 <= 9840.0] <- 9800.0
  data$S3757000[9950.0 <= data$S3757000 & data$S3757000 <= 9990.0] <- 9950.0
  data$S3757000 <- factor(data$S3757000, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S3805700 <- factor(data$S3805700, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$S3812301 <- factor(data$S3812301, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "UNGRADED"))
  data$S3821501[0.0 <= data$S3821501 & data$S3821501 <= 10.0] <- 0.0
  data$S3821501[11.0 <= data$S3821501 & data$S3821501 <= 20.0] <- 11.0
  data$S3821501[21.0 <= data$S3821501 & data$S3821501 <= 30.0] <- 21.0
  data$S3821501[31.0 <= data$S3821501 & data$S3821501 <= 35.0] <- 31.0
  data$S3821501[36.0 <= data$S3821501 & data$S3821501 <= 40.0] <- 36.0
  data$S3821501[41.0 <= data$S3821501 & data$S3821501 <= 50.0] <- 41.0
  data$S3821501[51.0 <= data$S3821501 & data$S3821501 <= 60.0] <- 51.0
  data$S3821501[61.0 <= data$S3821501 & data$S3821501 <= 80.0] <- 61.0
  data$S3821501[81.0 <= data$S3821501 & data$S3821501 <= 100.0] <- 81.0
  data$S3821501[101.0 <= data$S3821501 & data$S3821501 <= 168.0] <- 101.0
  data$S3821501 <- factor(data$S3821501, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$S3835800 <- factor(data$S3835800, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$S4597000 <- factor(data$S4597000, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S4602900 <- factor(data$S4602900, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$S4681900 <- factor(data$S4681900, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$S4682100 <- factor(data$S4682100, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$S4682300 <- factor(data$S4682300, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$S5041000[170.0 <= data$S5041000 & data$S5041000 <= 290.0] <- 170.0
  data$S5041000[370.0 <= data$S5041000 & data$S5041000 <= 490.0] <- 370.0
  data$S5041000[570.0 <= data$S5041000 & data$S5041000 <= 690.0] <- 570.0
  data$S5041000[1070.0 <= data$S5041000 & data$S5041000 <= 3990.0] <- 1070.0
  data$S5041000[4070.0 <= data$S5041000 & data$S5041000 <= 4590.0] <- 4070.0
  data$S5041000[4670.0 <= data$S5041000 & data$S5041000 <= 5790.0] <- 4670.0
  data$S5041000[6070.0 <= data$S5041000 & data$S5041000 <= 6390.0] <- 6070.0
  data$S5041000[6470.0 <= data$S5041000 & data$S5041000 <= 6780.0] <- 6470.0
  data$S5041000[6870.0 <= data$S5041000 & data$S5041000 <= 7190.0] <- 6870.0
  data$S5041000[7270.0 <= data$S5041000 & data$S5041000 <= 7790.0] <- 7270.0
  data$S5041000[7860.0 <= data$S5041000 & data$S5041000 <= 8470.0] <- 7860.0
  data$S5041000[8560.0 <= data$S5041000 & data$S5041000 <= 8690.0] <- 8560.0
  data$S5041000[8770.0 <= data$S5041000 & data$S5041000 <= 9290.0] <- 8770.0
  data$S5041000[9370.0 <= data$S5041000 & data$S5041000 <= 9590.0] <- 9370.0
  data$S5041000[9670.0 <= data$S5041000 & data$S5041000 <= 9890.0] <- 9670.0
  data$S5041000[9950.0 <= data$S5041000 & data$S5041000 <= 9990.0] <- 9950.0
  data$S5041000 <- factor(data$S5041000, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S5041700[10.0 <= data$S5041700 & data$S5041700 <= 430.0] <- 10.0
  data$S5041700[500.0 <= data$S5041700 & data$S5041700 <= 950.0] <- 500.0
  data$S5041700[1000.0 <= data$S5041700 & data$S5041700 <= 1240.0] <- 1000.0
  data$S5041700[1300.0 <= data$S5041700 & data$S5041700 <= 1530.0] <- 1300.0
  data$S5041700[1540.0 <= data$S5041700 & data$S5041700 <= 1560.0] <- 1540.0
  data$S5041700[1600.0 <= data$S5041700 & data$S5041700 <= 1760.0] <- 1600.0
  data$S5041700[1800.0 <= data$S5041700 & data$S5041700 <= 1860.0] <- 1800.0
  data$S5041700[1900.0 <= data$S5041700 & data$S5041700 <= 1960.0] <- 1900.0
  data$S5041700[2000.0 <= data$S5041700 & data$S5041700 <= 2060.0] <- 2000.0
  data$S5041700[2100.0 <= data$S5041700 & data$S5041700 <= 2150.0] <- 2100.0
  data$S5041700[2200.0 <= data$S5041700 & data$S5041700 <= 2340.0] <- 2200.0
  data$S5041700[2400.0 <= data$S5041700 & data$S5041700 <= 2550.0] <- 2400.0
  data$S5041700[2600.0 <= data$S5041700 & data$S5041700 <= 2760.0] <- 2600.0
  data$S5041700[2800.0 <= data$S5041700 & data$S5041700 <= 2960.0] <- 2800.0
  data$S5041700[3000.0 <= data$S5041700 & data$S5041700 <= 3260.0] <- 3000.0
  data$S5041700[3300.0 <= data$S5041700 & data$S5041700 <= 3650.0] <- 3300.0
  data$S5041700[3700.0 <= data$S5041700 & data$S5041700 <= 3950.0] <- 3700.0
  data$S5041700[4000.0 <= data$S5041700 & data$S5041700 <= 4160.0] <- 4000.0
  data$S5041700[4200.0 <= data$S5041700 & data$S5041700 <= 4250.0] <- 4200.0
  data$S5041700[4300.0 <= data$S5041700 & data$S5041700 <= 4430.0] <- 4300.0
  data$S5041700[4500.0 <= data$S5041700 & data$S5041700 <= 4650.0] <- 4500.0
  data$S5041700[4700.0 <= data$S5041700 & data$S5041700 <= 4960.0] <- 4700.0
  data$S5041700[5000.0 <= data$S5041700 & data$S5041700 <= 5930.0] <- 5000.0
  data$S5041700[6000.0 <= data$S5041700 & data$S5041700 <= 6130.0] <- 6000.0
  data$S5041700[6200.0 <= data$S5041700 & data$S5041700 <= 6940.0] <- 6200.0
  data$S5041700[7000.0 <= data$S5041700 & data$S5041700 <= 7620.0] <- 7000.0
  data$S5041700[7700.0 <= data$S5041700 & data$S5041700 <= 7750.0] <- 7700.0
  data$S5041700[7800.0 <= data$S5041700 & data$S5041700 <= 7850.0] <- 7800.0
  data$S5041700[7900.0 <= data$S5041700 & data$S5041700 <= 8960.0] <- 7900.0
  data$S5041700[9000.0 <= data$S5041700 & data$S5041700 <= 9750.0] <- 9000.0
  data$S5041700[9800.0 <= data$S5041700 & data$S5041700 <= 9840.0] <- 9800.0
  data$S5041700[9950.0 <= data$S5041700 & data$S5041700 <= 9990.0] <- 9950.0
  data$S5041700 <- factor(data$S5041700, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S5236800 <- factor(data$S5236800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S5239600 <- factor(data$S5239600, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S5405600 <- factor(data$S5405600, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$S5412700 <- factor(data$S5412700, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("None",
      "1st Grade",
      "2nd Grade",
      "3rd Grade",
      "4th Grade",
      "5th Grade",
      "6th Grade",
      "7th Grade",
      "8th Grade",
      "9th Grade",
      "10th Grade",
      "11th Grade",
      "12th Grade",
      "Ungraded"))
  data$S5421801[0.0 <= data$S5421801 & data$S5421801 <= 10.0] <- 0.0
  data$S5421801[11.0 <= data$S5421801 & data$S5421801 <= 20.0] <- 11.0
  data$S5421801[21.0 <= data$S5421801 & data$S5421801 <= 30.0] <- 21.0
  data$S5421801[31.0 <= data$S5421801 & data$S5421801 <= 35.0] <- 31.0
  data$S5421801[36.0 <= data$S5421801 & data$S5421801 <= 40.0] <- 36.0
  data$S5421801[41.0 <= data$S5421801 & data$S5421801 <= 50.0] <- 41.0
  data$S5421801[51.0 <= data$S5421801 & data$S5421801 <= 60.0] <- 51.0
  data$S5421801[61.0 <= data$S5421801 & data$S5421801 <= 80.0] <- 61.0
  data$S5421801[81.0 <= data$S5421801 & data$S5421801 <= 100.0] <- 81.0
  data$S5421801[101.0 <= data$S5421801 & data$S5421801 <= 168.0] <- 101.0
  data$S5421801 <- factor(data$S5421801, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$S5436300 <- factor(data$S5436300, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$S6209000 <- factor(data$S6209000, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S6222100 <- factor(data$S6222100, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$S6782200[170.0 <= data$S6782200 & data$S6782200 <= 290.0] <- 170.0
  data$S6782200[370.0 <= data$S6782200 & data$S6782200 <= 490.0] <- 370.0
  data$S6782200[570.0 <= data$S6782200 & data$S6782200 <= 690.0] <- 570.0
  data$S6782200[1070.0 <= data$S6782200 & data$S6782200 <= 3990.0] <- 1070.0
  data$S6782200[4070.0 <= data$S6782200 & data$S6782200 <= 4590.0] <- 4070.0
  data$S6782200[4670.0 <= data$S6782200 & data$S6782200 <= 5790.0] <- 4670.0
  data$S6782200[6070.0 <= data$S6782200 & data$S6782200 <= 6390.0] <- 6070.0
  data$S6782200[6470.0 <= data$S6782200 & data$S6782200 <= 6780.0] <- 6470.0
  data$S6782200[6870.0 <= data$S6782200 & data$S6782200 <= 7190.0] <- 6870.0
  data$S6782200[7270.0 <= data$S6782200 & data$S6782200 <= 7790.0] <- 7270.0
  data$S6782200[7860.0 <= data$S6782200 & data$S6782200 <= 8470.0] <- 7860.0
  data$S6782200[8560.0 <= data$S6782200 & data$S6782200 <= 8690.0] <- 8560.0
  data$S6782200[8770.0 <= data$S6782200 & data$S6782200 <= 9290.0] <- 8770.0
  data$S6782200[9370.0 <= data$S6782200 & data$S6782200 <= 9590.0] <- 9370.0
  data$S6782200[9670.0 <= data$S6782200 & data$S6782200 <= 9890.0] <- 9670.0
  data$S6782200[9950.0 <= data$S6782200 & data$S6782200 <= 9990.0] <- 9950.0
  data$S6782200 <- factor(data$S6782200, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S6783100[10.0 <= data$S6783100 & data$S6783100 <= 430.0] <- 10.0
  data$S6783100[500.0 <= data$S6783100 & data$S6783100 <= 950.0] <- 500.0
  data$S6783100[1000.0 <= data$S6783100 & data$S6783100 <= 1240.0] <- 1000.0
  data$S6783100[1300.0 <= data$S6783100 & data$S6783100 <= 1530.0] <- 1300.0
  data$S6783100[1540.0 <= data$S6783100 & data$S6783100 <= 1560.0] <- 1540.0
  data$S6783100[1600.0 <= data$S6783100 & data$S6783100 <= 1760.0] <- 1600.0
  data$S6783100[1800.0 <= data$S6783100 & data$S6783100 <= 1860.0] <- 1800.0
  data$S6783100[1900.0 <= data$S6783100 & data$S6783100 <= 1960.0] <- 1900.0
  data$S6783100[2000.0 <= data$S6783100 & data$S6783100 <= 2060.0] <- 2000.0
  data$S6783100[2100.0 <= data$S6783100 & data$S6783100 <= 2150.0] <- 2100.0
  data$S6783100[2200.0 <= data$S6783100 & data$S6783100 <= 2340.0] <- 2200.0
  data$S6783100[2400.0 <= data$S6783100 & data$S6783100 <= 2550.0] <- 2400.0
  data$S6783100[2600.0 <= data$S6783100 & data$S6783100 <= 2760.0] <- 2600.0
  data$S6783100[2800.0 <= data$S6783100 & data$S6783100 <= 2960.0] <- 2800.0
  data$S6783100[3000.0 <= data$S6783100 & data$S6783100 <= 3260.0] <- 3000.0
  data$S6783100[3300.0 <= data$S6783100 & data$S6783100 <= 3650.0] <- 3300.0
  data$S6783100[3700.0 <= data$S6783100 & data$S6783100 <= 3950.0] <- 3700.0
  data$S6783100[4000.0 <= data$S6783100 & data$S6783100 <= 4160.0] <- 4000.0
  data$S6783100[4200.0 <= data$S6783100 & data$S6783100 <= 4250.0] <- 4200.0
  data$S6783100[4300.0 <= data$S6783100 & data$S6783100 <= 4430.0] <- 4300.0
  data$S6783100[4500.0 <= data$S6783100 & data$S6783100 <= 4650.0] <- 4500.0
  data$S6783100[4700.0 <= data$S6783100 & data$S6783100 <= 4960.0] <- 4700.0
  data$S6783100[5000.0 <= data$S6783100 & data$S6783100 <= 5930.0] <- 5000.0
  data$S6783100[6000.0 <= data$S6783100 & data$S6783100 <= 6130.0] <- 6000.0
  data$S6783100[6200.0 <= data$S6783100 & data$S6783100 <= 6940.0] <- 6200.0
  data$S6783100[7000.0 <= data$S6783100 & data$S6783100 <= 7620.0] <- 7000.0
  data$S6783100[7700.0 <= data$S6783100 & data$S6783100 <= 7750.0] <- 7700.0
  data$S6783100[7800.0 <= data$S6783100 & data$S6783100 <= 7850.0] <- 7800.0
  data$S6783100[7900.0 <= data$S6783100 & data$S6783100 <= 8960.0] <- 7900.0
  data$S6783100[9000.0 <= data$S6783100 & data$S6783100 <= 9750.0] <- 9000.0
  data$S6783100[9800.0 <= data$S6783100 & data$S6783100 <= 9840.0] <- 9800.0
  data$S6783100[9950.0 <= data$S6783100 & data$S6783100 <= 9990.0] <- 9950.0
  data$S6783100 <- factor(data$S6783100, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S7026600 <- factor(data$S7026600, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S7029800 <- factor(data$S7029800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S7506100 <- factor(data$S7506100, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$S7513600 <- factor(data$S7513600, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("None",
      "1st Grade",
      "2nd Grade",
      "3rd Grade",
      "4th Grade",
      "5th Grade",
      "6th Grade",
      "7th Grade",
      "8th Grade",
      "9th Grade",
      "10th Grade",
      "11th Grade",
      "12th Grade",
      "Ungraded"))
  data$S7523100[0.0 <= data$S7523100 & data$S7523100 <= 10.0] <- 0.0
  data$S7523100[11.0 <= data$S7523100 & data$S7523100 <= 20.0] <- 11.0
  data$S7523100[21.0 <= data$S7523100 & data$S7523100 <= 30.0] <- 21.0
  data$S7523100[31.0 <= data$S7523100 & data$S7523100 <= 35.0] <- 31.0
  data$S7523100[36.0 <= data$S7523100 & data$S7523100 <= 40.0] <- 36.0
  data$S7523100[41.0 <= data$S7523100 & data$S7523100 <= 50.0] <- 41.0
  data$S7523100[51.0 <= data$S7523100 & data$S7523100 <= 60.0] <- 51.0
  data$S7523100[61.0 <= data$S7523100 & data$S7523100 <= 80.0] <- 61.0
  data$S7523100[81.0 <= data$S7523100 & data$S7523100 <= 100.0] <- 81.0
  data$S7523100[101.0 <= data$S7523100 & data$S7523100 <= 168.0] <- 101.0
  data$S7523100 <- factor(data$S7523100, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$S7537100 <- factor(data$S7537100, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$S8231400 <- factor(data$S8231400, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S8241400 <- factor(data$S8241400, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$S8332300 <- factor(data$S8332300, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$S8332500 <- factor(data$S8332500, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$S8332700 <- factor(data$S8332700, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$S8688800[170.0 <= data$S8688800 & data$S8688800 <= 290.0] <- 170.0
  data$S8688800[370.0 <= data$S8688800 & data$S8688800 <= 490.0] <- 370.0
  data$S8688800[570.0 <= data$S8688800 & data$S8688800 <= 690.0] <- 570.0
  data$S8688800[1070.0 <= data$S8688800 & data$S8688800 <= 3990.0] <- 1070.0
  data$S8688800[4070.0 <= data$S8688800 & data$S8688800 <= 4590.0] <- 4070.0
  data$S8688800[4670.0 <= data$S8688800 & data$S8688800 <= 5790.0] <- 4670.0
  data$S8688800[6070.0 <= data$S8688800 & data$S8688800 <= 6390.0] <- 6070.0
  data$S8688800[6470.0 <= data$S8688800 & data$S8688800 <= 6780.0] <- 6470.0
  data$S8688800[6870.0 <= data$S8688800 & data$S8688800 <= 7190.0] <- 6870.0
  data$S8688800[7270.0 <= data$S8688800 & data$S8688800 <= 7790.0] <- 7270.0
  data$S8688800[7860.0 <= data$S8688800 & data$S8688800 <= 8470.0] <- 7860.0
  data$S8688800[8560.0 <= data$S8688800 & data$S8688800 <= 8690.0] <- 8560.0
  data$S8688800[8770.0 <= data$S8688800 & data$S8688800 <= 9290.0] <- 8770.0
  data$S8688800[9370.0 <= data$S8688800 & data$S8688800 <= 9590.0] <- 9370.0
  data$S8688800[9670.0 <= data$S8688800 & data$S8688800 <= 9890.0] <- 9670.0
  data$S8688800[9950.0 <= data$S8688800 & data$S8688800 <= 9990.0] <- 9950.0
  data$S8688800 <- factor(data$S8688800, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S8689700[10.0 <= data$S8689700 & data$S8689700 <= 430.0] <- 10.0
  data$S8689700[500.0 <= data$S8689700 & data$S8689700 <= 950.0] <- 500.0
  data$S8689700[1000.0 <= data$S8689700 & data$S8689700 <= 1240.0] <- 1000.0
  data$S8689700[1300.0 <= data$S8689700 & data$S8689700 <= 1530.0] <- 1300.0
  data$S8689700[1540.0 <= data$S8689700 & data$S8689700 <= 1560.0] <- 1540.0
  data$S8689700[1600.0 <= data$S8689700 & data$S8689700 <= 1760.0] <- 1600.0
  data$S8689700[1800.0 <= data$S8689700 & data$S8689700 <= 1860.0] <- 1800.0
  data$S8689700[1900.0 <= data$S8689700 & data$S8689700 <= 1960.0] <- 1900.0
  data$S8689700[2000.0 <= data$S8689700 & data$S8689700 <= 2060.0] <- 2000.0
  data$S8689700[2100.0 <= data$S8689700 & data$S8689700 <= 2150.0] <- 2100.0
  data$S8689700[2200.0 <= data$S8689700 & data$S8689700 <= 2340.0] <- 2200.0
  data$S8689700[2400.0 <= data$S8689700 & data$S8689700 <= 2550.0] <- 2400.0
  data$S8689700[2600.0 <= data$S8689700 & data$S8689700 <= 2760.0] <- 2600.0
  data$S8689700[2800.0 <= data$S8689700 & data$S8689700 <= 2960.0] <- 2800.0
  data$S8689700[3000.0 <= data$S8689700 & data$S8689700 <= 3260.0] <- 3000.0
  data$S8689700[3300.0 <= data$S8689700 & data$S8689700 <= 3650.0] <- 3300.0
  data$S8689700[3700.0 <= data$S8689700 & data$S8689700 <= 3950.0] <- 3700.0
  data$S8689700[4000.0 <= data$S8689700 & data$S8689700 <= 4160.0] <- 4000.0
  data$S8689700[4200.0 <= data$S8689700 & data$S8689700 <= 4250.0] <- 4200.0
  data$S8689700[4300.0 <= data$S8689700 & data$S8689700 <= 4430.0] <- 4300.0
  data$S8689700[4500.0 <= data$S8689700 & data$S8689700 <= 4650.0] <- 4500.0
  data$S8689700[4700.0 <= data$S8689700 & data$S8689700 <= 4960.0] <- 4700.0
  data$S8689700[5000.0 <= data$S8689700 & data$S8689700 <= 5930.0] <- 5000.0
  data$S8689700[6000.0 <= data$S8689700 & data$S8689700 <= 6130.0] <- 6000.0
  data$S8689700[6200.0 <= data$S8689700 & data$S8689700 <= 6940.0] <- 6200.0
  data$S8689700[7000.0 <= data$S8689700 & data$S8689700 <= 7620.0] <- 7000.0
  data$S8689700[7700.0 <= data$S8689700 & data$S8689700 <= 7750.0] <- 7700.0
  data$S8689700[7800.0 <= data$S8689700 & data$S8689700 <= 7850.0] <- 7800.0
  data$S8689700[7900.0 <= data$S8689700 & data$S8689700 <= 8960.0] <- 7900.0
  data$S8689700[9000.0 <= data$S8689700 & data$S8689700 <= 9750.0] <- 9000.0
  data$S8689700[9800.0 <= data$S8689700 & data$S8689700 <= 9840.0] <- 9800.0
  data$S8689700[9950.0 <= data$S8689700 & data$S8689700 <= 9990.0] <- 9950.0
  data$S8689700 <- factor(data$S8689700, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$S8997800 <- factor(data$S8997800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S9000900 <- factor(data$S9000900, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T0009400 <- factor(data$T0009400, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$T0014000 <- factor(data$T0014000, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("None",
      "1st Grade",
      "2nd Grade",
      "3rd Grade",
      "4th Grade",
      "5th Grade",
      "6th Grade",
      "7th Grade",
      "8th Grade",
      "9th Grade",
      "10th Grade",
      "11th Grade",
      "12th Grade",
      "Ungraded"))
  data$T0023600[0.0 <= data$T0023600 & data$T0023600 <= 10.0] <- 0.0
  data$T0023600[11.0 <= data$T0023600 & data$T0023600 <= 20.0] <- 11.0
  data$T0023600[21.0 <= data$T0023600 & data$T0023600 <= 30.0] <- 21.0
  data$T0023600[31.0 <= data$T0023600 & data$T0023600 <= 35.0] <- 31.0
  data$T0023600[36.0 <= data$T0023600 & data$T0023600 <= 40.0] <- 36.0
  data$T0023600[41.0 <= data$T0023600 & data$T0023600 <= 50.0] <- 41.0
  data$T0023600[51.0 <= data$T0023600 & data$T0023600 <= 60.0] <- 51.0
  data$T0023600[61.0 <= data$T0023600 & data$T0023600 <= 80.0] <- 61.0
  data$T0023600[81.0 <= data$T0023600 & data$T0023600 <= 100.0] <- 81.0
  data$T0023600[101.0 <= data$T0023600 & data$T0023600 <= 168.0] <- 101.0
  data$T0023600 <- factor(data$T0023600, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$T0033700 <- factor(data$T0033700, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$T0639200 <- factor(data$T0639200, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T0653200 <- factor(data$T0653200, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$T1108600[170.0 <= data$T1108600 & data$T1108600 <= 290.0] <- 170.0
  data$T1108600[370.0 <= data$T1108600 & data$T1108600 <= 490.0] <- 370.0
  data$T1108600[570.0 <= data$T1108600 & data$T1108600 <= 690.0] <- 570.0
  data$T1108600[1070.0 <= data$T1108600 & data$T1108600 <= 3990.0] <- 1070.0
  data$T1108600[4070.0 <= data$T1108600 & data$T1108600 <= 4590.0] <- 4070.0
  data$T1108600[4670.0 <= data$T1108600 & data$T1108600 <= 5790.0] <- 4670.0
  data$T1108600[6070.0 <= data$T1108600 & data$T1108600 <= 6390.0] <- 6070.0
  data$T1108600[6470.0 <= data$T1108600 & data$T1108600 <= 6780.0] <- 6470.0
  data$T1108600[6870.0 <= data$T1108600 & data$T1108600 <= 7190.0] <- 6870.0
  data$T1108600[7270.0 <= data$T1108600 & data$T1108600 <= 7790.0] <- 7270.0
  data$T1108600[7860.0 <= data$T1108600 & data$T1108600 <= 8470.0] <- 7860.0
  data$T1108600[8560.0 <= data$T1108600 & data$T1108600 <= 8690.0] <- 8560.0
  data$T1108600[8770.0 <= data$T1108600 & data$T1108600 <= 9290.0] <- 8770.0
  data$T1108600[9370.0 <= data$T1108600 & data$T1108600 <= 9590.0] <- 9370.0
  data$T1108600[9670.0 <= data$T1108600 & data$T1108600 <= 9890.0] <- 9670.0
  data$T1108600[9950.0 <= data$T1108600 & data$T1108600 <= 9990.0] <- 9950.0
  data$T1108600 <- factor(data$T1108600, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$T1109400[10.0 <= data$T1109400 & data$T1109400 <= 430.0] <- 10.0
  data$T1109400[500.0 <= data$T1109400 & data$T1109400 <= 950.0] <- 500.0
  data$T1109400[1000.0 <= data$T1109400 & data$T1109400 <= 1240.0] <- 1000.0
  data$T1109400[1300.0 <= data$T1109400 & data$T1109400 <= 1530.0] <- 1300.0
  data$T1109400[1540.0 <= data$T1109400 & data$T1109400 <= 1560.0] <- 1540.0
  data$T1109400[1600.0 <= data$T1109400 & data$T1109400 <= 1760.0] <- 1600.0
  data$T1109400[1800.0 <= data$T1109400 & data$T1109400 <= 1860.0] <- 1800.0
  data$T1109400[1900.0 <= data$T1109400 & data$T1109400 <= 1960.0] <- 1900.0
  data$T1109400[2000.0 <= data$T1109400 & data$T1109400 <= 2060.0] <- 2000.0
  data$T1109400[2100.0 <= data$T1109400 & data$T1109400 <= 2150.0] <- 2100.0
  data$T1109400[2200.0 <= data$T1109400 & data$T1109400 <= 2340.0] <- 2200.0
  data$T1109400[2400.0 <= data$T1109400 & data$T1109400 <= 2550.0] <- 2400.0
  data$T1109400[2600.0 <= data$T1109400 & data$T1109400 <= 2760.0] <- 2600.0
  data$T1109400[2800.0 <= data$T1109400 & data$T1109400 <= 2960.0] <- 2800.0
  data$T1109400[3000.0 <= data$T1109400 & data$T1109400 <= 3260.0] <- 3000.0
  data$T1109400[3300.0 <= data$T1109400 & data$T1109400 <= 3650.0] <- 3300.0
  data$T1109400[3700.0 <= data$T1109400 & data$T1109400 <= 3950.0] <- 3700.0
  data$T1109400[4000.0 <= data$T1109400 & data$T1109400 <= 4160.0] <- 4000.0
  data$T1109400[4200.0 <= data$T1109400 & data$T1109400 <= 4250.0] <- 4200.0
  data$T1109400[4300.0 <= data$T1109400 & data$T1109400 <= 4430.0] <- 4300.0
  data$T1109400[4500.0 <= data$T1109400 & data$T1109400 <= 4650.0] <- 4500.0
  data$T1109400[4700.0 <= data$T1109400 & data$T1109400 <= 4960.0] <- 4700.0
  data$T1109400[5000.0 <= data$T1109400 & data$T1109400 <= 5930.0] <- 5000.0
  data$T1109400[6000.0 <= data$T1109400 & data$T1109400 <= 6130.0] <- 6000.0
  data$T1109400[6200.0 <= data$T1109400 & data$T1109400 <= 6940.0] <- 6200.0
  data$T1109400[7000.0 <= data$T1109400 & data$T1109400 <= 7620.0] <- 7000.0
  data$T1109400[7700.0 <= data$T1109400 & data$T1109400 <= 7750.0] <- 7700.0
  data$T1109400[7800.0 <= data$T1109400 & data$T1109400 <= 7850.0] <- 7800.0
  data$T1109400[7900.0 <= data$T1109400 & data$T1109400 <= 8960.0] <- 7900.0
  data$T1109400[9000.0 <= data$T1109400 & data$T1109400 <= 9750.0] <- 9000.0
  data$T1109400[9800.0 <= data$T1109400 & data$T1109400 <= 9840.0] <- 9800.0
  data$T1109400[9950.0 <= data$T1109400 & data$T1109400 <= 9990.0] <- 9950.0
  data$T1109400 <- factor(data$T1109400, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$T1407700 <- factor(data$T1407700, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T1410600 <- factor(data$T1410600, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T2012100 <- factor(data$T2012100, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$T2016100 <- factor(data$T2016100, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("None",
      "1st Grade",
      "2nd Grade",
      "3rd Grade",
      "4th Grade",
      "5th Grade",
      "6th Grade",
      "7th Grade",
      "8th Grade",
      "9th Grade",
      "10th Grade",
      "11th Grade",
      "12th Grade",
      "Ungraded"))
  data$T2018500[0.0 <= data$T2018500 & data$T2018500 <= 10.0] <- 0.0
  data$T2018500[11.0 <= data$T2018500 & data$T2018500 <= 20.0] <- 11.0
  data$T2018500[21.0 <= data$T2018500 & data$T2018500 <= 30.0] <- 21.0
  data$T2018500[31.0 <= data$T2018500 & data$T2018500 <= 35.0] <- 31.0
  data$T2018500[36.0 <= data$T2018500 & data$T2018500 <= 40.0] <- 36.0
  data$T2018500[41.0 <= data$T2018500 & data$T2018500 <= 50.0] <- 41.0
  data$T2018500[51.0 <= data$T2018500 & data$T2018500 <= 60.0] <- 51.0
  data$T2018500[61.0 <= data$T2018500 & data$T2018500 <= 80.0] <- 61.0
  data$T2018500[81.0 <= data$T2018500 & data$T2018500 <= 100.0] <- 81.0
  data$T2018500[101.0 <= data$T2018500 & data$T2018500 <= 168.0] <- 101.0
  data$T2018500 <- factor(data$T2018500, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$T2021300 <- factor(data$T2021300, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$T2680200 <- factor(data$T2680200, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T2692700 <- factor(data$T2692700, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$T2782600 <- factor(data$T2782600, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$T2782800 <- factor(data$T2782800, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$T2783000 <- factor(data$T2783000, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$T3186000[170.0 <= data$T3186000 & data$T3186000 <= 290.0] <- 170.0
  data$T3186000[370.0 <= data$T3186000 & data$T3186000 <= 490.0] <- 370.0
  data$T3186000[570.0 <= data$T3186000 & data$T3186000 <= 690.0] <- 570.0
  data$T3186000[1070.0 <= data$T3186000 & data$T3186000 <= 3990.0] <- 1070.0
  data$T3186000[4070.0 <= data$T3186000 & data$T3186000 <= 4590.0] <- 4070.0
  data$T3186000[4670.0 <= data$T3186000 & data$T3186000 <= 5790.0] <- 4670.0
  data$T3186000[6070.0 <= data$T3186000 & data$T3186000 <= 6390.0] <- 6070.0
  data$T3186000[6470.0 <= data$T3186000 & data$T3186000 <= 6780.0] <- 6470.0
  data$T3186000[6870.0 <= data$T3186000 & data$T3186000 <= 7190.0] <- 6870.0
  data$T3186000[7270.0 <= data$T3186000 & data$T3186000 <= 7790.0] <- 7270.0
  data$T3186000[7860.0 <= data$T3186000 & data$T3186000 <= 8470.0] <- 7860.0
  data$T3186000[8560.0 <= data$T3186000 & data$T3186000 <= 8690.0] <- 8560.0
  data$T3186000[8770.0 <= data$T3186000 & data$T3186000 <= 9290.0] <- 8770.0
  data$T3186000[9370.0 <= data$T3186000 & data$T3186000 <= 9590.0] <- 9370.0
  data$T3186000[9670.0 <= data$T3186000 & data$T3186000 <= 9890.0] <- 9670.0
  data$T3186000[9950.0 <= data$T3186000 & data$T3186000 <= 9990.0] <- 9950.0
  data$T3186000 <- factor(data$T3186000, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$T3186900[10.0 <= data$T3186900 & data$T3186900 <= 430.0] <- 10.0
  data$T3186900[500.0 <= data$T3186900 & data$T3186900 <= 950.0] <- 500.0
  data$T3186900[1000.0 <= data$T3186900 & data$T3186900 <= 1240.0] <- 1000.0
  data$T3186900[1300.0 <= data$T3186900 & data$T3186900 <= 1530.0] <- 1300.0
  data$T3186900[1540.0 <= data$T3186900 & data$T3186900 <= 1560.0] <- 1540.0
  data$T3186900[1600.0 <= data$T3186900 & data$T3186900 <= 1760.0] <- 1600.0
  data$T3186900[1800.0 <= data$T3186900 & data$T3186900 <= 1860.0] <- 1800.0
  data$T3186900[1900.0 <= data$T3186900 & data$T3186900 <= 1960.0] <- 1900.0
  data$T3186900[2000.0 <= data$T3186900 & data$T3186900 <= 2060.0] <- 2000.0
  data$T3186900[2100.0 <= data$T3186900 & data$T3186900 <= 2150.0] <- 2100.0
  data$T3186900[2200.0 <= data$T3186900 & data$T3186900 <= 2340.0] <- 2200.0
  data$T3186900[2400.0 <= data$T3186900 & data$T3186900 <= 2550.0] <- 2400.0
  data$T3186900[2600.0 <= data$T3186900 & data$T3186900 <= 2760.0] <- 2600.0
  data$T3186900[2800.0 <= data$T3186900 & data$T3186900 <= 2960.0] <- 2800.0
  data$T3186900[3000.0 <= data$T3186900 & data$T3186900 <= 3260.0] <- 3000.0
  data$T3186900[3300.0 <= data$T3186900 & data$T3186900 <= 3650.0] <- 3300.0
  data$T3186900[3700.0 <= data$T3186900 & data$T3186900 <= 3950.0] <- 3700.0
  data$T3186900[4000.0 <= data$T3186900 & data$T3186900 <= 4160.0] <- 4000.0
  data$T3186900[4200.0 <= data$T3186900 & data$T3186900 <= 4250.0] <- 4200.0
  data$T3186900[4300.0 <= data$T3186900 & data$T3186900 <= 4430.0] <- 4300.0
  data$T3186900[4500.0 <= data$T3186900 & data$T3186900 <= 4650.0] <- 4500.0
  data$T3186900[4700.0 <= data$T3186900 & data$T3186900 <= 4960.0] <- 4700.0
  data$T3186900[5000.0 <= data$T3186900 & data$T3186900 <= 5930.0] <- 5000.0
  data$T3186900[6000.0 <= data$T3186900 & data$T3186900 <= 6130.0] <- 6000.0
  data$T3186900[6200.0 <= data$T3186900 & data$T3186900 <= 6940.0] <- 6200.0
  data$T3186900[7000.0 <= data$T3186900 & data$T3186900 <= 7620.0] <- 7000.0
  data$T3186900[7700.0 <= data$T3186900 & data$T3186900 <= 7750.0] <- 7700.0
  data$T3186900[7800.0 <= data$T3186900 & data$T3186900 <= 7850.0] <- 7800.0
  data$T3186900[7900.0 <= data$T3186900 & data$T3186900 <= 8960.0] <- 7900.0
  data$T3186900[9000.0 <= data$T3186900 & data$T3186900 <= 9750.0] <- 9000.0
  data$T3186900[9800.0 <= data$T3186900 & data$T3186900 <= 9840.0] <- 9800.0
  data$T3186900[9950.0 <= data$T3186900 & data$T3186900 <= 9990.0] <- 9950.0
  data$T3186900 <- factor(data$T3186900, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$T3504400 <- factor(data$T3504400, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T3507200 <- factor(data$T3507200, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T3602100 <- factor(data$T3602100, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$T3606400 <- factor(data$T3606400, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("None",
      "1st Grade",
      "2nd Grade",
      "3rd Grade",
      "4th Grade",
      "5th Grade",
      "6th Grade",
      "7th Grade",
      "8th Grade",
      "9th Grade",
      "10th Grade",
      "11th Grade",
      "12th Grade",
      "Ungraded"))
  data$T3609000[0.0 <= data$T3609000 & data$T3609000 <= 10.0] <- 0.0
  data$T3609000[11.0 <= data$T3609000 & data$T3609000 <= 20.0] <- 11.0
  data$T3609000[21.0 <= data$T3609000 & data$T3609000 <= 30.0] <- 21.0
  data$T3609000[31.0 <= data$T3609000 & data$T3609000 <= 35.0] <- 31.0
  data$T3609000[36.0 <= data$T3609000 & data$T3609000 <= 40.0] <- 36.0
  data$T3609000[41.0 <= data$T3609000 & data$T3609000 <= 50.0] <- 41.0
  data$T3609000[51.0 <= data$T3609000 & data$T3609000 <= 60.0] <- 51.0
  data$T3609000[61.0 <= data$T3609000 & data$T3609000 <= 80.0] <- 61.0
  data$T3609000[81.0 <= data$T3609000 & data$T3609000 <= 100.0] <- 81.0
  data$T3609000[101.0 <= data$T3609000 & data$T3609000 <= 168.0] <- 101.0
  data$T3609000 <- factor(data$T3609000, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$T3612000 <- factor(data$T3612000, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$T4164900 <- factor(data$T4164900, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T4178700 <- factor(data$T4178700, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$T4596900[170.0 <= data$T4596900 & data$T4596900 <= 290.0] <- 170.0
  data$T4596900[370.0 <= data$T4596900 & data$T4596900 <= 490.0] <- 370.0
  data$T4596900[570.0 <= data$T4596900 & data$T4596900 <= 690.0] <- 570.0
  data$T4596900[1070.0 <= data$T4596900 & data$T4596900 <= 3990.0] <- 1070.0
  data$T4596900[4070.0 <= data$T4596900 & data$T4596900 <= 4590.0] <- 4070.0
  data$T4596900[4670.0 <= data$T4596900 & data$T4596900 <= 5790.0] <- 4670.0
  data$T4596900[6070.0 <= data$T4596900 & data$T4596900 <= 6390.0] <- 6070.0
  data$T4596900[6470.0 <= data$T4596900 & data$T4596900 <= 6780.0] <- 6470.0
  data$T4596900[6870.0 <= data$T4596900 & data$T4596900 <= 7190.0] <- 6870.0
  data$T4596900[7270.0 <= data$T4596900 & data$T4596900 <= 7790.0] <- 7270.0
  data$T4596900[7860.0 <= data$T4596900 & data$T4596900 <= 8470.0] <- 7860.0
  data$T4596900[8560.0 <= data$T4596900 & data$T4596900 <= 8690.0] <- 8560.0
  data$T4596900[8770.0 <= data$T4596900 & data$T4596900 <= 9290.0] <- 8770.0
  data$T4596900[9370.0 <= data$T4596900 & data$T4596900 <= 9590.0] <- 9370.0
  data$T4596900[9670.0 <= data$T4596900 & data$T4596900 <= 9890.0] <- 9670.0
  data$T4596900[9950.0 <= data$T4596900 & data$T4596900 <= 9990.0] <- 9950.0
  data$T4596900 <- factor(data$T4596900, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$T4597800[10.0 <= data$T4597800 & data$T4597800 <= 430.0] <- 10.0
  data$T4597800[500.0 <= data$T4597800 & data$T4597800 <= 950.0] <- 500.0
  data$T4597800[1000.0 <= data$T4597800 & data$T4597800 <= 1240.0] <- 1000.0
  data$T4597800[1300.0 <= data$T4597800 & data$T4597800 <= 1530.0] <- 1300.0
  data$T4597800[1540.0 <= data$T4597800 & data$T4597800 <= 1560.0] <- 1540.0
  data$T4597800[1600.0 <= data$T4597800 & data$T4597800 <= 1760.0] <- 1600.0
  data$T4597800[1800.0 <= data$T4597800 & data$T4597800 <= 1860.0] <- 1800.0
  data$T4597800[1900.0 <= data$T4597800 & data$T4597800 <= 1960.0] <- 1900.0
  data$T4597800[2000.0 <= data$T4597800 & data$T4597800 <= 2060.0] <- 2000.0
  data$T4597800[2100.0 <= data$T4597800 & data$T4597800 <= 2150.0] <- 2100.0
  data$T4597800[2200.0 <= data$T4597800 & data$T4597800 <= 2340.0] <- 2200.0
  data$T4597800[2400.0 <= data$T4597800 & data$T4597800 <= 2550.0] <- 2400.0
  data$T4597800[2600.0 <= data$T4597800 & data$T4597800 <= 2760.0] <- 2600.0
  data$T4597800[2800.0 <= data$T4597800 & data$T4597800 <= 2960.0] <- 2800.0
  data$T4597800[3000.0 <= data$T4597800 & data$T4597800 <= 3260.0] <- 3000.0
  data$T4597800[3300.0 <= data$T4597800 & data$T4597800 <= 3650.0] <- 3300.0
  data$T4597800[3700.0 <= data$T4597800 & data$T4597800 <= 3950.0] <- 3700.0
  data$T4597800[4000.0 <= data$T4597800 & data$T4597800 <= 4160.0] <- 4000.0
  data$T4597800[4200.0 <= data$T4597800 & data$T4597800 <= 4250.0] <- 4200.0
  data$T4597800[4300.0 <= data$T4597800 & data$T4597800 <= 4430.0] <- 4300.0
  data$T4597800[4500.0 <= data$T4597800 & data$T4597800 <= 4650.0] <- 4500.0
  data$T4597800[4700.0 <= data$T4597800 & data$T4597800 <= 4960.0] <- 4700.0
  data$T4597800[5000.0 <= data$T4597800 & data$T4597800 <= 5930.0] <- 5000.0
  data$T4597800[6000.0 <= data$T4597800 & data$T4597800 <= 6130.0] <- 6000.0
  data$T4597800[6200.0 <= data$T4597800 & data$T4597800 <= 6940.0] <- 6200.0
  data$T4597800[7000.0 <= data$T4597800 & data$T4597800 <= 7620.0] <- 7000.0
  data$T4597800[7700.0 <= data$T4597800 & data$T4597800 <= 7750.0] <- 7700.0
  data$T4597800[7800.0 <= data$T4597800 & data$T4597800 <= 7850.0] <- 7800.0
  data$T4597800[7900.0 <= data$T4597800 & data$T4597800 <= 8960.0] <- 7900.0
  data$T4597800[9000.0 <= data$T4597800 & data$T4597800 <= 9750.0] <- 9000.0
  data$T4597800[9800.0 <= data$T4597800 & data$T4597800 <= 9840.0] <- 9800.0
  data$T4597800[9950.0 <= data$T4597800 & data$T4597800 <= 9990.0] <- 9950.0
  data$T4597800 <- factor(data$T4597800, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$T4934100 <- factor(data$T4934100, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T4937100 <- factor(data$T4937100, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T5202300 <- factor(data$T5202300, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$T5206800 <- factor(data$T5206800, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("None",
      "1st Grade",
      "2nd Grade",
      "3rd Grade",
      "4th Grade",
      "5th Grade",
      "6th Grade",
      "7th Grade",
      "8th Grade",
      "9th Grade",
      "10th Grade",
      "11th Grade",
      "12th Grade",
      "Ungraded"))
  data$T5209400[0.0 <= data$T5209400 & data$T5209400 <= 10.0] <- 0.0
  data$T5209400[11.0 <= data$T5209400 & data$T5209400 <= 20.0] <- 11.0
  data$T5209400[21.0 <= data$T5209400 & data$T5209400 <= 30.0] <- 21.0
  data$T5209400[31.0 <= data$T5209400 & data$T5209400 <= 35.0] <- 31.0
  data$T5209400[36.0 <= data$T5209400 & data$T5209400 <= 40.0] <- 36.0
  data$T5209400[41.0 <= data$T5209400 & data$T5209400 <= 50.0] <- 41.0
  data$T5209400[51.0 <= data$T5209400 & data$T5209400 <= 60.0] <- 51.0
  data$T5209400[61.0 <= data$T5209400 & data$T5209400 <= 80.0] <- 61.0
  data$T5209400[81.0 <= data$T5209400 & data$T5209400 <= 100.0] <- 81.0
  data$T5209400[101.0 <= data$T5209400 & data$T5209400 <= 168.0] <- 101.0
  data$T5209400 <- factor(data$T5209400, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$T5211900 <- factor(data$T5211900, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$T5797300 <- factor(data$T5797300, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T5808400 <- factor(data$T5808400, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$T6143700 <- factor(data$T6143700, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$T6143900 <- factor(data$T6143900, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$T6144100 <- factor(data$T6144100, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$T6230100[170.0 <= data$T6230100 & data$T6230100 <= 290.0] <- 170.0
  data$T6230100[370.0 <= data$T6230100 & data$T6230100 <= 490.0] <- 370.0
  data$T6230100[570.0 <= data$T6230100 & data$T6230100 <= 690.0] <- 570.0
  data$T6230100[1070.0 <= data$T6230100 & data$T6230100 <= 3990.0] <- 1070.0
  data$T6230100[4070.0 <= data$T6230100 & data$T6230100 <= 4590.0] <- 4070.0
  data$T6230100[4670.0 <= data$T6230100 & data$T6230100 <= 5790.0] <- 4670.0
  data$T6230100[6070.0 <= data$T6230100 & data$T6230100 <= 6390.0] <- 6070.0
  data$T6230100[6470.0 <= data$T6230100 & data$T6230100 <= 6780.0] <- 6470.0
  data$T6230100[6870.0 <= data$T6230100 & data$T6230100 <= 7190.0] <- 6870.0
  data$T6230100[7270.0 <= data$T6230100 & data$T6230100 <= 7790.0] <- 7270.0
  data$T6230100[7860.0 <= data$T6230100 & data$T6230100 <= 8470.0] <- 7860.0
  data$T6230100[8560.0 <= data$T6230100 & data$T6230100 <= 8690.0] <- 8560.0
  data$T6230100[8770.0 <= data$T6230100 & data$T6230100 <= 9290.0] <- 8770.0
  data$T6230100[9370.0 <= data$T6230100 & data$T6230100 <= 9590.0] <- 9370.0
  data$T6230100[9670.0 <= data$T6230100 & data$T6230100 <= 9890.0] <- 9670.0
  data$T6230100[9950.0 <= data$T6230100 & data$T6230100 <= 9990.0] <- 9950.0
  data$T6230100 <- factor(data$T6230100, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$T6231000[10.0 <= data$T6231000 & data$T6231000 <= 430.0] <- 10.0
  data$T6231000[500.0 <= data$T6231000 & data$T6231000 <= 950.0] <- 500.0
  data$T6231000[1000.0 <= data$T6231000 & data$T6231000 <= 1240.0] <- 1000.0
  data$T6231000[1300.0 <= data$T6231000 & data$T6231000 <= 1530.0] <- 1300.0
  data$T6231000[1540.0 <= data$T6231000 & data$T6231000 <= 1560.0] <- 1540.0
  data$T6231000[1600.0 <= data$T6231000 & data$T6231000 <= 1760.0] <- 1600.0
  data$T6231000[1800.0 <= data$T6231000 & data$T6231000 <= 1860.0] <- 1800.0
  data$T6231000[1900.0 <= data$T6231000 & data$T6231000 <= 1960.0] <- 1900.0
  data$T6231000[2000.0 <= data$T6231000 & data$T6231000 <= 2060.0] <- 2000.0
  data$T6231000[2100.0 <= data$T6231000 & data$T6231000 <= 2150.0] <- 2100.0
  data$T6231000[2200.0 <= data$T6231000 & data$T6231000 <= 2340.0] <- 2200.0
  data$T6231000[2400.0 <= data$T6231000 & data$T6231000 <= 2550.0] <- 2400.0
  data$T6231000[2600.0 <= data$T6231000 & data$T6231000 <= 2760.0] <- 2600.0
  data$T6231000[2800.0 <= data$T6231000 & data$T6231000 <= 2960.0] <- 2800.0
  data$T6231000[3000.0 <= data$T6231000 & data$T6231000 <= 3260.0] <- 3000.0
  data$T6231000[3300.0 <= data$T6231000 & data$T6231000 <= 3650.0] <- 3300.0
  data$T6231000[3700.0 <= data$T6231000 & data$T6231000 <= 3950.0] <- 3700.0
  data$T6231000[4000.0 <= data$T6231000 & data$T6231000 <= 4160.0] <- 4000.0
  data$T6231000[4200.0 <= data$T6231000 & data$T6231000 <= 4250.0] <- 4200.0
  data$T6231000[4300.0 <= data$T6231000 & data$T6231000 <= 4430.0] <- 4300.0
  data$T6231000[4500.0 <= data$T6231000 & data$T6231000 <= 4650.0] <- 4500.0
  data$T6231000[4700.0 <= data$T6231000 & data$T6231000 <= 4960.0] <- 4700.0
  data$T6231000[5000.0 <= data$T6231000 & data$T6231000 <= 5930.0] <- 5000.0
  data$T6231000[6000.0 <= data$T6231000 & data$T6231000 <= 6130.0] <- 6000.0
  data$T6231000[6200.0 <= data$T6231000 & data$T6231000 <= 6940.0] <- 6200.0
  data$T6231000[7000.0 <= data$T6231000 & data$T6231000 <= 7620.0] <- 7000.0
  data$T6231000[7700.0 <= data$T6231000 & data$T6231000 <= 7750.0] <- 7700.0
  data$T6231000[7800.0 <= data$T6231000 & data$T6231000 <= 7850.0] <- 7800.0
  data$T6231000[7900.0 <= data$T6231000 & data$T6231000 <= 8960.0] <- 7900.0
  data$T6231000[9000.0 <= data$T6231000 & data$T6231000 <= 9750.0] <- 9000.0
  data$T6231000[9800.0 <= data$T6231000 & data$T6231000 <= 9840.0] <- 9800.0
  data$T6231000[9950.0 <= data$T6231000 & data$T6231000 <= 9990.0] <- 9950.0
  data$T6231000 <- factor(data$T6231000, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$T6587300 <- factor(data$T6587300, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T6590200 <- factor(data$T6590200, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T6652100 <- factor(data$T6652100, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$T6656600 <- factor(data$T6656600, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("None",
      "1st Grade",
      "2nd Grade",
      "3rd Grade",
      "4th Grade",
      "5th Grade",
      "6th Grade",
      "7th Grade",
      "8th Grade",
      "9th Grade",
      "10th Grade",
      "11th Grade",
      "12th Grade",
      "Ungraded"))
  data$T6660000[0.0 <= data$T6660000 & data$T6660000 <= 10.0] <- 0.0
  data$T6660000[11.0 <= data$T6660000 & data$T6660000 <= 20.0] <- 11.0
  data$T6660000[21.0 <= data$T6660000 & data$T6660000 <= 30.0] <- 21.0
  data$T6660000[31.0 <= data$T6660000 & data$T6660000 <= 35.0] <- 31.0
  data$T6660000[36.0 <= data$T6660000 & data$T6660000 <= 40.0] <- 36.0
  data$T6660000[41.0 <= data$T6660000 & data$T6660000 <= 50.0] <- 41.0
  data$T6660000[51.0 <= data$T6660000 & data$T6660000 <= 60.0] <- 51.0
  data$T6660000[61.0 <= data$T6660000 & data$T6660000 <= 80.0] <- 61.0
  data$T6660000[81.0 <= data$T6660000 & data$T6660000 <= 100.0] <- 81.0
  data$T6660000[101.0 <= data$T6660000 & data$T6660000 <= 168.0] <- 101.0
  data$T6660000 <- factor(data$T6660000, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$T6663300 <- factor(data$T6663300, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$T7076600[1.0 <= data$T7076600 & data$T7076600 <= 9.0] <- 1.0
  data$T7076600[10.0 <= data$T7076600 & data$T7076600 <= 19.0] <- 10.0
  data$T7076600[20.0 <= data$T7076600 & data$T7076600 <= 29.0] <- 20.0
  data$T7076600[30.0 <= data$T7076600 & data$T7076600 <= 39.0] <- 30.0
  data$T7076600[40.0 <= data$T7076600 & data$T7076600 <= 49.0] <- 40.0
  data$T7076600[50.0 <= data$T7076600 & data$T7076600 <= 59.0] <- 50.0
  data$T7076600[60.0 <= data$T7076600 & data$T7076600 <= 69.0] <- 60.0
  data$T7076600[70.0 <= data$T7076600 & data$T7076600 <= 79.0] <- 70.0
  data$T7076600[80.0 <= data$T7076600 & data$T7076600 <= 89.0] <- 80.0
  data$T7076600[90.0 <= data$T7076600 & data$T7076600 <= 99.0] <- 90.0
  data$T7076600[100.0 <= data$T7076600 & data$T7076600 <= 9.9999999E7] <- 100.0
  data$T7076600 <- factor(data$T7076600, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T7076700[1.0 <= data$T7076700 & data$T7076700 <= 9.0] <- 1.0
  data$T7076700[10.0 <= data$T7076700 & data$T7076700 <= 19.0] <- 10.0
  data$T7076700[20.0 <= data$T7076700 & data$T7076700 <= 29.0] <- 20.0
  data$T7076700[30.0 <= data$T7076700 & data$T7076700 <= 39.0] <- 30.0
  data$T7076700[40.0 <= data$T7076700 & data$T7076700 <= 49.0] <- 40.0
  data$T7076700[50.0 <= data$T7076700 & data$T7076700 <= 59.0] <- 50.0
  data$T7076700[60.0 <= data$T7076700 & data$T7076700 <= 69.0] <- 60.0
  data$T7076700[70.0 <= data$T7076700 & data$T7076700 <= 79.0] <- 70.0
  data$T7076700[80.0 <= data$T7076700 & data$T7076700 <= 89.0] <- 80.0
  data$T7076700[90.0 <= data$T7076700 & data$T7076700 <= 99.0] <- 90.0
  data$T7076700[100.0 <= data$T7076700 & data$T7076700 <= 9.9999999E7] <- 100.0
  data$T7076700 <- factor(data$T7076700, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T7076800 <- factor(data$T7076800, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more"))
  data$T7076900 <- factor(data$T7076900, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$T7130500[1.0 <= data$T7130500 & data$T7130500 <= 9.0] <- 1.0
  data$T7130500[10.0 <= data$T7130500 & data$T7130500 <= 19.0] <- 10.0
  data$T7130500[20.0 <= data$T7130500 & data$T7130500 <= 29.0] <- 20.0
  data$T7130500[30.0 <= data$T7130500 & data$T7130500 <= 39.0] <- 30.0
  data$T7130500[40.0 <= data$T7130500 & data$T7130500 <= 49.0] <- 40.0
  data$T7130500[50.0 <= data$T7130500 & data$T7130500 <= 59.0] <- 50.0
  data$T7130500[60.0 <= data$T7130500 & data$T7130500 <= 69.0] <- 60.0
  data$T7130500[70.0 <= data$T7130500 & data$T7130500 <= 79.0] <- 70.0
  data$T7130500[80.0 <= data$T7130500 & data$T7130500 <= 89.0] <- 80.0
  data$T7130500[90.0 <= data$T7130500 & data$T7130500 <= 99.0] <- 90.0
  data$T7130500[100.0 <= data$T7130500 & data$T7130500 <= 9.9999999E7] <- 100.0
  data$T7130500 <- factor(data$T7130500, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T7130900[1.0 <= data$T7130900 & data$T7130900 <= 9.0] <- 1.0
  data$T7130900[10.0 <= data$T7130900 & data$T7130900 <= 19.0] <- 10.0
  data$T7130900[20.0 <= data$T7130900 & data$T7130900 <= 29.0] <- 20.0
  data$T7130900[30.0 <= data$T7130900 & data$T7130900 <= 39.0] <- 30.0
  data$T7130900[40.0 <= data$T7130900 & data$T7130900 <= 49.0] <- 40.0
  data$T7130900[50.0 <= data$T7130900 & data$T7130900 <= 59.0] <- 50.0
  data$T7130900[60.0 <= data$T7130900 & data$T7130900 <= 69.0] <- 60.0
  data$T7130900[70.0 <= data$T7130900 & data$T7130900 <= 79.0] <- 70.0
  data$T7130900[80.0 <= data$T7130900 & data$T7130900 <= 89.0] <- 80.0
  data$T7130900[90.0 <= data$T7130900 & data$T7130900 <= 99.0] <- 90.0
  data$T7130900[100.0 <= data$T7130900 & data$T7130900 <= 9.9999999E7] <- 100.0
  data$T7130900 <- factor(data$T7130900, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T7131300 <- factor(data$T7131300, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more"))
  data$T7131700 <- factor(data$T7131700, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$T7143000[1.0 <= data$T7143000 & data$T7143000 <= 9.0] <- 1.0
  data$T7143000[10.0 <= data$T7143000 & data$T7143000 <= 19.0] <- 10.0
  data$T7143000[20.0 <= data$T7143000 & data$T7143000 <= 29.0] <- 20.0
  data$T7143000[30.0 <= data$T7143000 & data$T7143000 <= 39.0] <- 30.0
  data$T7143000[40.0 <= data$T7143000 & data$T7143000 <= 49.0] <- 40.0
  data$T7143000[50.0 <= data$T7143000 & data$T7143000 <= 59.0] <- 50.0
  data$T7143000[60.0 <= data$T7143000 & data$T7143000 <= 69.0] <- 60.0
  data$T7143000[70.0 <= data$T7143000 & data$T7143000 <= 79.0] <- 70.0
  data$T7143000[80.0 <= data$T7143000 & data$T7143000 <= 89.0] <- 80.0
  data$T7143000[90.0 <= data$T7143000 & data$T7143000 <= 99.0] <- 90.0
  data$T7143000[100.0 <= data$T7143000 & data$T7143000 <= 9.9999999E7] <- 100.0
  data$T7143000 <- factor(data$T7143000, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T7143300[1.0 <= data$T7143300 & data$T7143300 <= 9.0] <- 1.0
  data$T7143300[10.0 <= data$T7143300 & data$T7143300 <= 19.0] <- 10.0
  data$T7143300[20.0 <= data$T7143300 & data$T7143300 <= 29.0] <- 20.0
  data$T7143300[30.0 <= data$T7143300 & data$T7143300 <= 39.0] <- 30.0
  data$T7143300[40.0 <= data$T7143300 & data$T7143300 <= 49.0] <- 40.0
  data$T7143300[50.0 <= data$T7143300 & data$T7143300 <= 59.0] <- 50.0
  data$T7143300[60.0 <= data$T7143300 & data$T7143300 <= 69.0] <- 60.0
  data$T7143300[70.0 <= data$T7143300 & data$T7143300 <= 79.0] <- 70.0
  data$T7143300[80.0 <= data$T7143300 & data$T7143300 <= 89.0] <- 80.0
  data$T7143300[90.0 <= data$T7143300 & data$T7143300 <= 99.0] <- 90.0
  data$T7143300[100.0 <= data$T7143300 & data$T7143300 <= 9.9999999E7] <- 100.0
  data$T7143300 <- factor(data$T7143300, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T7143600 <- factor(data$T7143600, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more"))
  data$T7143900 <- factor(data$T7143900, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$T7161700[1.0 <= data$T7161700 & data$T7161700 <= 9.0] <- 1.0
  data$T7161700[10.0 <= data$T7161700 & data$T7161700 <= 19.0] <- 10.0
  data$T7161700[20.0 <= data$T7161700 & data$T7161700 <= 29.0] <- 20.0
  data$T7161700[30.0 <= data$T7161700 & data$T7161700 <= 39.0] <- 30.0
  data$T7161700[40.0 <= data$T7161700 & data$T7161700 <= 49.0] <- 40.0
  data$T7161700[50.0 <= data$T7161700 & data$T7161700 <= 59.0] <- 50.0
  data$T7161700[60.0 <= data$T7161700 & data$T7161700 <= 69.0] <- 60.0
  data$T7161700[70.0 <= data$T7161700 & data$T7161700 <= 79.0] <- 70.0
  data$T7161700[80.0 <= data$T7161700 & data$T7161700 <= 89.0] <- 80.0
  data$T7161700[90.0 <= data$T7161700 & data$T7161700 <= 99.0] <- 90.0
  data$T7161700[100.0 <= data$T7161700 & data$T7161700 <= 9.9999999E7] <- 100.0
  data$T7161700 <- factor(data$T7161700, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T7161800[1.0 <= data$T7161800 & data$T7161800 <= 9.0] <- 1.0
  data$T7161800[10.0 <= data$T7161800 & data$T7161800 <= 19.0] <- 10.0
  data$T7161800[20.0 <= data$T7161800 & data$T7161800 <= 29.0] <- 20.0
  data$T7161800[30.0 <= data$T7161800 & data$T7161800 <= 39.0] <- 30.0
  data$T7161800[40.0 <= data$T7161800 & data$T7161800 <= 49.0] <- 40.0
  data$T7161800[50.0 <= data$T7161800 & data$T7161800 <= 59.0] <- 50.0
  data$T7161800[60.0 <= data$T7161800 & data$T7161800 <= 69.0] <- 60.0
  data$T7161800[70.0 <= data$T7161800 & data$T7161800 <= 79.0] <- 70.0
  data$T7161800[80.0 <= data$T7161800 & data$T7161800 <= 89.0] <- 80.0
  data$T7161800[90.0 <= data$T7161800 & data$T7161800 <= 99.0] <- 90.0
  data$T7161800[100.0 <= data$T7161800 & data$T7161800 <= 9.9999999E7] <- 100.0
  data$T7161800 <- factor(data$T7161800, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T7161900 <- factor(data$T7161900, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more"))
  data$T7162000 <- factor(data$T7162000, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$T7231400 <- factor(data$T7231400, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T7242300 <- factor(data$T7242300, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$T7385200 <- factor(data$T7385200, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more"))
  data$T7385400 <- factor(data$T7385400, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by his/her employer and he/she cannot change them on his/her own;",
      "Starting and finishing times are decided by his/her employer but with his/her input;",
      "He/she can decide the time he/she starts and finishes work, within certain limits;",
      "He/she is entirely free to decide when he/she starts and finishes work.",
      "Starting and finishing work times depend on things outside of his/her control and outside of the employer's control"))
  data$T7731100[170.0 <= data$T7731100 & data$T7731100 <= 290.0] <- 170.0
  data$T7731100[370.0 <= data$T7731100 & data$T7731100 <= 490.0] <- 370.0
  data$T7731100[570.0 <= data$T7731100 & data$T7731100 <= 690.0] <- 570.0
  data$T7731100[1070.0 <= data$T7731100 & data$T7731100 <= 3990.0] <- 1070.0
  data$T7731100[4070.0 <= data$T7731100 & data$T7731100 <= 4590.0] <- 4070.0
  data$T7731100[4670.0 <= data$T7731100 & data$T7731100 <= 5790.0] <- 4670.0
  data$T7731100[6070.0 <= data$T7731100 & data$T7731100 <= 6390.0] <- 6070.0
  data$T7731100[6470.0 <= data$T7731100 & data$T7731100 <= 6780.0] <- 6470.0
  data$T7731100[6870.0 <= data$T7731100 & data$T7731100 <= 7190.0] <- 6870.0
  data$T7731100[7270.0 <= data$T7731100 & data$T7731100 <= 7790.0] <- 7270.0
  data$T7731100[7860.0 <= data$T7731100 & data$T7731100 <= 8470.0] <- 7860.0
  data$T7731100[8560.0 <= data$T7731100 & data$T7731100 <= 8690.0] <- 8560.0
  data$T7731100[8770.0 <= data$T7731100 & data$T7731100 <= 9290.0] <- 8770.0
  data$T7731100[9370.0 <= data$T7731100 & data$T7731100 <= 9590.0] <- 9370.0
  data$T7731100[9670.0 <= data$T7731100 & data$T7731100 <= 9890.0] <- 9670.0
  data$T7731100[9950.0 <= data$T7731100 & data$T7731100 <= 9990.0] <- 9950.0
  data$T7731100 <- factor(data$T7731100, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$T7732100[10.0 <= data$T7732100 & data$T7732100 <= 430.0] <- 10.0
  data$T7732100[500.0 <= data$T7732100 & data$T7732100 <= 950.0] <- 500.0
  data$T7732100[1000.0 <= data$T7732100 & data$T7732100 <= 1240.0] <- 1000.0
  data$T7732100[1300.0 <= data$T7732100 & data$T7732100 <= 1530.0] <- 1300.0
  data$T7732100[1540.0 <= data$T7732100 & data$T7732100 <= 1560.0] <- 1540.0
  data$T7732100[1600.0 <= data$T7732100 & data$T7732100 <= 1760.0] <- 1600.0
  data$T7732100[1800.0 <= data$T7732100 & data$T7732100 <= 1860.0] <- 1800.0
  data$T7732100[1900.0 <= data$T7732100 & data$T7732100 <= 1960.0] <- 1900.0
  data$T7732100[2000.0 <= data$T7732100 & data$T7732100 <= 2060.0] <- 2000.0
  data$T7732100[2100.0 <= data$T7732100 & data$T7732100 <= 2150.0] <- 2100.0
  data$T7732100[2200.0 <= data$T7732100 & data$T7732100 <= 2340.0] <- 2200.0
  data$T7732100[2400.0 <= data$T7732100 & data$T7732100 <= 2550.0] <- 2400.0
  data$T7732100[2600.0 <= data$T7732100 & data$T7732100 <= 2760.0] <- 2600.0
  data$T7732100[2800.0 <= data$T7732100 & data$T7732100 <= 2960.0] <- 2800.0
  data$T7732100[3000.0 <= data$T7732100 & data$T7732100 <= 3260.0] <- 3000.0
  data$T7732100[3300.0 <= data$T7732100 & data$T7732100 <= 3650.0] <- 3300.0
  data$T7732100[3700.0 <= data$T7732100 & data$T7732100 <= 3950.0] <- 3700.0
  data$T7732100[4000.0 <= data$T7732100 & data$T7732100 <= 4160.0] <- 4000.0
  data$T7732100[4200.0 <= data$T7732100 & data$T7732100 <= 4250.0] <- 4200.0
  data$T7732100[4300.0 <= data$T7732100 & data$T7732100 <= 4430.0] <- 4300.0
  data$T7732100[4500.0 <= data$T7732100 & data$T7732100 <= 4650.0] <- 4500.0
  data$T7732100[4700.0 <= data$T7732100 & data$T7732100 <= 4960.0] <- 4700.0
  data$T7732100[5000.0 <= data$T7732100 & data$T7732100 <= 5930.0] <- 5000.0
  data$T7732100[6000.0 <= data$T7732100 & data$T7732100 <= 6130.0] <- 6000.0
  data$T7732100[6200.0 <= data$T7732100 & data$T7732100 <= 6940.0] <- 6200.0
  data$T7732100[7000.0 <= data$T7732100 & data$T7732100 <= 7620.0] <- 7000.0
  data$T7732100[7700.0 <= data$T7732100 & data$T7732100 <= 7750.0] <- 7700.0
  data$T7732100[7800.0 <= data$T7732100 & data$T7732100 <= 7850.0] <- 7800.0
  data$T7732100[7900.0 <= data$T7732100 & data$T7732100 <= 8960.0] <- 7900.0
  data$T7732100[9000.0 <= data$T7732100 & data$T7732100 <= 9750.0] <- 9000.0
  data$T7732100[9800.0 <= data$T7732100 & data$T7732100 <= 9840.0] <- 9800.0
  data$T7732100[9950.0 <= data$T7732100 & data$T7732100 <= 9990.0] <- 9950.0
  data$T7732100 <- factor(data$T7732100, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$T8093500 <- factor(data$T8093500, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T8097600 <- factor(data$T8097600, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T8123700 <- factor(data$T8123700, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$T8123801[1980.0 <= data$T8123801 & data$T8123801 <= 1997.0] <- 1980.0
  data$T8123801[1998.0 <= data$T8123801 & data$T8123801 <= 1999.0] <- 1998.0
  data$T8123801[2000.0 <= data$T8123801 & data$T8123801 <= 2001.0] <- 2000.0
  data$T8123801[2002.0 <= data$T8123801 & data$T8123801 <= 2003.0] <- 2002.0
  data$T8123801[2004.0 <= data$T8123801 & data$T8123801 <= 2005.0] <- 2004.0
  data$T8123801[2006.0 <= data$T8123801 & data$T8123801 <= 2007.0] <- 2006.0
  data$T8123801[2008.0 <= data$T8123801 & data$T8123801 <= 2009.0] <- 2008.0
  data$T8123801[2010.0 <= data$T8123801 & data$T8123801 <= 2011.0] <- 2010.0
  data$T8123801[2012.0 <= data$T8123801 & data$T8123801 <= 2013.0] <- 2012.0
  data$T8123801[2014.0 <= data$T8123801 & data$T8123801 <= 2015.0] <- 2014.0
  data$T8123801[2016.0 <= data$T8123801 & data$T8123801 <= 2017.0] <- 2016.0
  data$T8123801 <- factor(data$T8123801, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$T8123901[1980.0 <= data$T8123901 & data$T8123901 <= 1997.0] <- 1980.0
  data$T8123901[1998.0 <= data$T8123901 & data$T8123901 <= 1999.0] <- 1998.0
  data$T8123901[2000.0 <= data$T8123901 & data$T8123901 <= 2001.0] <- 2000.0
  data$T8123901[2002.0 <= data$T8123901 & data$T8123901 <= 2003.0] <- 2002.0
  data$T8123901[2004.0 <= data$T8123901 & data$T8123901 <= 2005.0] <- 2004.0
  data$T8123901[2006.0 <= data$T8123901 & data$T8123901 <= 2007.0] <- 2006.0
  data$T8123901[2008.0 <= data$T8123901 & data$T8123901 <= 2009.0] <- 2008.0
  data$T8123901[2010.0 <= data$T8123901 & data$T8123901 <= 2011.0] <- 2010.0
  data$T8123901[2012.0 <= data$T8123901 & data$T8123901 <= 2013.0] <- 2012.0
  data$T8123901[2014.0 <= data$T8123901 & data$T8123901 <= 2015.0] <- 2014.0
  data$T8123901[2016.0 <= data$T8123901 & data$T8123901 <= 2017.0] <- 2016.0
  data$T8123901 <- factor(data$T8123901, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$T8124001[1980.0 <= data$T8124001 & data$T8124001 <= 1997.0] <- 1980.0
  data$T8124001[1998.0 <= data$T8124001 & data$T8124001 <= 1999.0] <- 1998.0
  data$T8124001[2000.0 <= data$T8124001 & data$T8124001 <= 2001.0] <- 2000.0
  data$T8124001[2002.0 <= data$T8124001 & data$T8124001 <= 2003.0] <- 2002.0
  data$T8124001[2004.0 <= data$T8124001 & data$T8124001 <= 2005.0] <- 2004.0
  data$T8124001[2006.0 <= data$T8124001 & data$T8124001 <= 2007.0] <- 2006.0
  data$T8124001[2008.0 <= data$T8124001 & data$T8124001 <= 2009.0] <- 2008.0
  data$T8124001[2010.0 <= data$T8124001 & data$T8124001 <= 2011.0] <- 2010.0
  data$T8124001[2012.0 <= data$T8124001 & data$T8124001 <= 2013.0] <- 2012.0
  data$T8124001[2014.0 <= data$T8124001 & data$T8124001 <= 2015.0] <- 2014.0
  data$T8124001[2016.0 <= data$T8124001 & data$T8124001 <= 2017.0] <- 2016.0
  data$T8124001 <- factor(data$T8124001, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$T8124101[1980.0 <= data$T8124101 & data$T8124101 <= 1997.0] <- 1980.0
  data$T8124101[1998.0 <= data$T8124101 & data$T8124101 <= 1999.0] <- 1998.0
  data$T8124101[2000.0 <= data$T8124101 & data$T8124101 <= 2001.0] <- 2000.0
  data$T8124101[2002.0 <= data$T8124101 & data$T8124101 <= 2003.0] <- 2002.0
  data$T8124101[2004.0 <= data$T8124101 & data$T8124101 <= 2005.0] <- 2004.0
  data$T8124101[2006.0 <= data$T8124101 & data$T8124101 <= 2007.0] <- 2006.0
  data$T8124101[2008.0 <= data$T8124101 & data$T8124101 <= 2009.0] <- 2008.0
  data$T8124101[2010.0 <= data$T8124101 & data$T8124101 <= 2011.0] <- 2010.0
  data$T8124101[2012.0 <= data$T8124101 & data$T8124101 <= 2013.0] <- 2012.0
  data$T8124101[2014.0 <= data$T8124101 & data$T8124101 <= 2015.0] <- 2014.0
  data$T8124101[2016.0 <= data$T8124101 & data$T8124101 <= 2017.0] <- 2016.0
  data$T8124101 <- factor(data$T8124101, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$T8124201[1980.0 <= data$T8124201 & data$T8124201 <= 1997.0] <- 1980.0
  data$T8124201[1998.0 <= data$T8124201 & data$T8124201 <= 1999.0] <- 1998.0
  data$T8124201[2000.0 <= data$T8124201 & data$T8124201 <= 2001.0] <- 2000.0
  data$T8124201[2002.0 <= data$T8124201 & data$T8124201 <= 2003.0] <- 2002.0
  data$T8124201[2004.0 <= data$T8124201 & data$T8124201 <= 2005.0] <- 2004.0
  data$T8124201[2006.0 <= data$T8124201 & data$T8124201 <= 2007.0] <- 2006.0
  data$T8124201[2008.0 <= data$T8124201 & data$T8124201 <= 2009.0] <- 2008.0
  data$T8124201[2010.0 <= data$T8124201 & data$T8124201 <= 2011.0] <- 2010.0
  data$T8124201[2012.0 <= data$T8124201 & data$T8124201 <= 2013.0] <- 2012.0
  data$T8124201[2014.0 <= data$T8124201 & data$T8124201 <= 2015.0] <- 2014.0
  data$T8124201[2016.0 <= data$T8124201 & data$T8124201 <= 2017.0] <- 2016.0
  data$T8124201 <- factor(data$T8124201, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$T8124301[1980.0 <= data$T8124301 & data$T8124301 <= 1997.0] <- 1980.0
  data$T8124301[1998.0 <= data$T8124301 & data$T8124301 <= 1999.0] <- 1998.0
  data$T8124301[2000.0 <= data$T8124301 & data$T8124301 <= 2001.0] <- 2000.0
  data$T8124301[2002.0 <= data$T8124301 & data$T8124301 <= 2003.0] <- 2002.0
  data$T8124301[2004.0 <= data$T8124301 & data$T8124301 <= 2005.0] <- 2004.0
  data$T8124301[2006.0 <= data$T8124301 & data$T8124301 <= 2007.0] <- 2006.0
  data$T8124301[2008.0 <= data$T8124301 & data$T8124301 <= 2009.0] <- 2008.0
  data$T8124301[2010.0 <= data$T8124301 & data$T8124301 <= 2011.0] <- 2010.0
  data$T8124301[2012.0 <= data$T8124301 & data$T8124301 <= 2013.0] <- 2012.0
  data$T8124301[2014.0 <= data$T8124301 & data$T8124301 <= 2015.0] <- 2014.0
  data$T8124301[2016.0 <= data$T8124301 & data$T8124301 <= 2017.0] <- 2016.0
  data$T8124301 <- factor(data$T8124301, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$T8124401[1980.0 <= data$T8124401 & data$T8124401 <= 1997.0] <- 1980.0
  data$T8124401[1998.0 <= data$T8124401 & data$T8124401 <= 1999.0] <- 1998.0
  data$T8124401[2000.0 <= data$T8124401 & data$T8124401 <= 2001.0] <- 2000.0
  data$T8124401[2002.0 <= data$T8124401 & data$T8124401 <= 2003.0] <- 2002.0
  data$T8124401[2004.0 <= data$T8124401 & data$T8124401 <= 2005.0] <- 2004.0
  data$T8124401[2006.0 <= data$T8124401 & data$T8124401 <= 2007.0] <- 2006.0
  data$T8124401[2008.0 <= data$T8124401 & data$T8124401 <= 2009.0] <- 2008.0
  data$T8124401[2010.0 <= data$T8124401 & data$T8124401 <= 2011.0] <- 2010.0
  data$T8124401[2012.0 <= data$T8124401 & data$T8124401 <= 2013.0] <- 2012.0
  data$T8124401[2014.0 <= data$T8124401 & data$T8124401 <= 2015.0] <- 2014.0
  data$T8124401[2016.0 <= data$T8124401 & data$T8124401 <= 2017.0] <- 2016.0
  data$T8124401 <- factor(data$T8124401, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$T8124501[1980.0 <= data$T8124501 & data$T8124501 <= 1997.0] <- 1980.0
  data$T8124501[1998.0 <= data$T8124501 & data$T8124501 <= 1999.0] <- 1998.0
  data$T8124501[2000.0 <= data$T8124501 & data$T8124501 <= 2001.0] <- 2000.0
  data$T8124501[2002.0 <= data$T8124501 & data$T8124501 <= 2003.0] <- 2002.0
  data$T8124501[2004.0 <= data$T8124501 & data$T8124501 <= 2005.0] <- 2004.0
  data$T8124501[2006.0 <= data$T8124501 & data$T8124501 <= 2007.0] <- 2006.0
  data$T8124501[2008.0 <= data$T8124501 & data$T8124501 <= 2009.0] <- 2008.0
  data$T8124501[2010.0 <= data$T8124501 & data$T8124501 <= 2011.0] <- 2010.0
  data$T8124501[2012.0 <= data$T8124501 & data$T8124501 <= 2013.0] <- 2012.0
  data$T8124501[2014.0 <= data$T8124501 & data$T8124501 <= 2015.0] <- 2014.0
  data$T8124501[2016.0 <= data$T8124501 & data$T8124501 <= 2017.0] <- 2016.0
  data$T8124501 <- factor(data$T8124501, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$T8124601[1980.0 <= data$T8124601 & data$T8124601 <= 1997.0] <- 1980.0
  data$T8124601[1998.0 <= data$T8124601 & data$T8124601 <= 1999.0] <- 1998.0
  data$T8124601[2000.0 <= data$T8124601 & data$T8124601 <= 2001.0] <- 2000.0
  data$T8124601[2002.0 <= data$T8124601 & data$T8124601 <= 2003.0] <- 2002.0
  data$T8124601[2004.0 <= data$T8124601 & data$T8124601 <= 2005.0] <- 2004.0
  data$T8124601[2006.0 <= data$T8124601 & data$T8124601 <= 2007.0] <- 2006.0
  data$T8124601[2008.0 <= data$T8124601 & data$T8124601 <= 2009.0] <- 2008.0
  data$T8124601[2010.0 <= data$T8124601 & data$T8124601 <= 2011.0] <- 2010.0
  data$T8124601[2012.0 <= data$T8124601 & data$T8124601 <= 2013.0] <- 2012.0
  data$T8124601[2014.0 <= data$T8124601 & data$T8124601 <= 2015.0] <- 2014.0
  data$T8124601[2016.0 <= data$T8124601 & data$T8124601 <= 2017.0] <- 2016.0
  data$T8124601 <- factor(data$T8124601, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$T8124701[1980.0 <= data$T8124701 & data$T8124701 <= 1997.0] <- 1980.0
  data$T8124701[1998.0 <= data$T8124701 & data$T8124701 <= 1999.0] <- 1998.0
  data$T8124701[2000.0 <= data$T8124701 & data$T8124701 <= 2001.0] <- 2000.0
  data$T8124701[2002.0 <= data$T8124701 & data$T8124701 <= 2003.0] <- 2002.0
  data$T8124701[2004.0 <= data$T8124701 & data$T8124701 <= 2005.0] <- 2004.0
  data$T8124701[2006.0 <= data$T8124701 & data$T8124701 <= 2007.0] <- 2006.0
  data$T8124701[2008.0 <= data$T8124701 & data$T8124701 <= 2009.0] <- 2008.0
  data$T8124701[2010.0 <= data$T8124701 & data$T8124701 <= 2011.0] <- 2010.0
  data$T8124701[2012.0 <= data$T8124701 & data$T8124701 <= 2013.0] <- 2012.0
  data$T8124701[2014.0 <= data$T8124701 & data$T8124701 <= 2015.0] <- 2014.0
  data$T8124701[2016.0 <= data$T8124701 & data$T8124701 <= 2017.0] <- 2016.0
  data$T8124701 <- factor(data$T8124701, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$T8124801[1980.0 <= data$T8124801 & data$T8124801 <= 1997.0] <- 1980.0
  data$T8124801[1998.0 <= data$T8124801 & data$T8124801 <= 1999.0] <- 1998.0
  data$T8124801[2000.0 <= data$T8124801 & data$T8124801 <= 2001.0] <- 2000.0
  data$T8124801[2002.0 <= data$T8124801 & data$T8124801 <= 2003.0] <- 2002.0
  data$T8124801[2004.0 <= data$T8124801 & data$T8124801 <= 2005.0] <- 2004.0
  data$T8124801[2006.0 <= data$T8124801 & data$T8124801 <= 2007.0] <- 2006.0
  data$T8124801[2008.0 <= data$T8124801 & data$T8124801 <= 2009.0] <- 2008.0
  data$T8124801[2010.0 <= data$T8124801 & data$T8124801 <= 2011.0] <- 2010.0
  data$T8124801[2012.0 <= data$T8124801 & data$T8124801 <= 2013.0] <- 2012.0
  data$T8124801[2014.0 <= data$T8124801 & data$T8124801 <= 2015.0] <- 2014.0
  data$T8124801[2016.0 <= data$T8124801 & data$T8124801 <= 2017.0] <- 2016.0
  data$T8124801 <- factor(data$T8124801, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$T8129000 <- factor(data$T8129000, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0), 
    labels=c("None",
      "1st Grade",
      "2nd Grade",
      "3rd Grade",
      "4th Grade",
      "5th Grade",
      "6th Grade",
      "7th Grade",
      "8th Grade",
      "9th Grade",
      "10th Grade",
      "11th Grade",
      "12th Grade",
      "Ungraded"))
  data$T8131800[0.0 <= data$T8131800 & data$T8131800 <= 10.0] <- 0.0
  data$T8131800[11.0 <= data$T8131800 & data$T8131800 <= 20.0] <- 11.0
  data$T8131800[21.0 <= data$T8131800 & data$T8131800 <= 30.0] <- 21.0
  data$T8131800[31.0 <= data$T8131800 & data$T8131800 <= 35.0] <- 31.0
  data$T8131800[36.0 <= data$T8131800 & data$T8131800 <= 40.0] <- 36.0
  data$T8131800[41.0 <= data$T8131800 & data$T8131800 <= 50.0] <- 41.0
  data$T8131800[51.0 <= data$T8131800 & data$T8131800 <= 60.0] <- 51.0
  data$T8131800[61.0 <= data$T8131800 & data$T8131800 <= 80.0] <- 61.0
  data$T8131800[81.0 <= data$T8131800 & data$T8131800 <= 100.0] <- 81.0
  data$T8131800[101.0 <= data$T8131800 & data$T8131800 <= 168.0] <- 101.0
  data$T8131800 <- factor(data$T8131800, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$T8134500 <- factor(data$T8134500, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$T8561800[1.0 <= data$T8561800 & data$T8561800 <= 9.0] <- 1.0
  data$T8561800[10.0 <= data$T8561800 & data$T8561800 <= 19.0] <- 10.0
  data$T8561800[20.0 <= data$T8561800 & data$T8561800 <= 29.0] <- 20.0
  data$T8561800[30.0 <= data$T8561800 & data$T8561800 <= 39.0] <- 30.0
  data$T8561800[40.0 <= data$T8561800 & data$T8561800 <= 49.0] <- 40.0
  data$T8561800[50.0 <= data$T8561800 & data$T8561800 <= 59.0] <- 50.0
  data$T8561800[60.0 <= data$T8561800 & data$T8561800 <= 69.0] <- 60.0
  data$T8561800[70.0 <= data$T8561800 & data$T8561800 <= 79.0] <- 70.0
  data$T8561800[80.0 <= data$T8561800 & data$T8561800 <= 89.0] <- 80.0
  data$T8561800[90.0 <= data$T8561800 & data$T8561800 <= 99.0] <- 90.0
  data$T8561800[100.0 <= data$T8561800 & data$T8561800 <= 9.9999999E7] <- 100.0
  data$T8561800 <- factor(data$T8561800, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T8561900[1.0 <= data$T8561900 & data$T8561900 <= 9.0] <- 1.0
  data$T8561900[10.0 <= data$T8561900 & data$T8561900 <= 19.0] <- 10.0
  data$T8561900[20.0 <= data$T8561900 & data$T8561900 <= 29.0] <- 20.0
  data$T8561900[30.0 <= data$T8561900 & data$T8561900 <= 39.0] <- 30.0
  data$T8561900[40.0 <= data$T8561900 & data$T8561900 <= 49.0] <- 40.0
  data$T8561900[50.0 <= data$T8561900 & data$T8561900 <= 59.0] <- 50.0
  data$T8561900[60.0 <= data$T8561900 & data$T8561900 <= 69.0] <- 60.0
  data$T8561900[70.0 <= data$T8561900 & data$T8561900 <= 79.0] <- 70.0
  data$T8561900[80.0 <= data$T8561900 & data$T8561900 <= 89.0] <- 80.0
  data$T8561900[90.0 <= data$T8561900 & data$T8561900 <= 99.0] <- 90.0
  data$T8561900[100.0 <= data$T8561900 & data$T8561900 <= 9.9999999E7] <- 100.0
  data$T8561900 <- factor(data$T8561900, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T8562000 <- factor(data$T8562000, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$T8562100 <- factor(data$T8562100, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$T8623800[1.0 <= data$T8623800 & data$T8623800 <= 9.0] <- 1.0
  data$T8623800[10.0 <= data$T8623800 & data$T8623800 <= 19.0] <- 10.0
  data$T8623800[20.0 <= data$T8623800 & data$T8623800 <= 29.0] <- 20.0
  data$T8623800[30.0 <= data$T8623800 & data$T8623800 <= 39.0] <- 30.0
  data$T8623800[40.0 <= data$T8623800 & data$T8623800 <= 49.0] <- 40.0
  data$T8623800[50.0 <= data$T8623800 & data$T8623800 <= 59.0] <- 50.0
  data$T8623800[60.0 <= data$T8623800 & data$T8623800 <= 69.0] <- 60.0
  data$T8623800[70.0 <= data$T8623800 & data$T8623800 <= 79.0] <- 70.0
  data$T8623800[80.0 <= data$T8623800 & data$T8623800 <= 89.0] <- 80.0
  data$T8623800[90.0 <= data$T8623800 & data$T8623800 <= 99.0] <- 90.0
  data$T8623800[100.0 <= data$T8623800 & data$T8623800 <= 9.9999999E7] <- 100.0
  data$T8623800 <- factor(data$T8623800, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T8623900[1.0 <= data$T8623900 & data$T8623900 <= 9.0] <- 1.0
  data$T8623900[10.0 <= data$T8623900 & data$T8623900 <= 19.0] <- 10.0
  data$T8623900[20.0 <= data$T8623900 & data$T8623900 <= 29.0] <- 20.0
  data$T8623900[30.0 <= data$T8623900 & data$T8623900 <= 39.0] <- 30.0
  data$T8623900[40.0 <= data$T8623900 & data$T8623900 <= 49.0] <- 40.0
  data$T8623900[50.0 <= data$T8623900 & data$T8623900 <= 59.0] <- 50.0
  data$T8623900[60.0 <= data$T8623900 & data$T8623900 <= 69.0] <- 60.0
  data$T8623900[70.0 <= data$T8623900 & data$T8623900 <= 79.0] <- 70.0
  data$T8623900[80.0 <= data$T8623900 & data$T8623900 <= 89.0] <- 80.0
  data$T8623900[90.0 <= data$T8623900 & data$T8623900 <= 99.0] <- 90.0
  data$T8623900[100.0 <= data$T8623900 & data$T8623900 <= 9.9999999E7] <- 100.0
  data$T8623900 <- factor(data$T8623900, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T8624000 <- factor(data$T8624000, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$T8624100 <- factor(data$T8624100, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$T8634900[1.0 <= data$T8634900 & data$T8634900 <= 9.0] <- 1.0
  data$T8634900[10.0 <= data$T8634900 & data$T8634900 <= 19.0] <- 10.0
  data$T8634900[20.0 <= data$T8634900 & data$T8634900 <= 29.0] <- 20.0
  data$T8634900[30.0 <= data$T8634900 & data$T8634900 <= 39.0] <- 30.0
  data$T8634900[40.0 <= data$T8634900 & data$T8634900 <= 49.0] <- 40.0
  data$T8634900[50.0 <= data$T8634900 & data$T8634900 <= 59.0] <- 50.0
  data$T8634900[60.0 <= data$T8634900 & data$T8634900 <= 69.0] <- 60.0
  data$T8634900[70.0 <= data$T8634900 & data$T8634900 <= 79.0] <- 70.0
  data$T8634900[80.0 <= data$T8634900 & data$T8634900 <= 89.0] <- 80.0
  data$T8634900[90.0 <= data$T8634900 & data$T8634900 <= 99.0] <- 90.0
  data$T8634900[100.0 <= data$T8634900 & data$T8634900 <= 9.9999999E7] <- 100.0
  data$T8634900 <- factor(data$T8634900, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T8635000[1.0 <= data$T8635000 & data$T8635000 <= 9.0] <- 1.0
  data$T8635000[10.0 <= data$T8635000 & data$T8635000 <= 19.0] <- 10.0
  data$T8635000[20.0 <= data$T8635000 & data$T8635000 <= 29.0] <- 20.0
  data$T8635000[30.0 <= data$T8635000 & data$T8635000 <= 39.0] <- 30.0
  data$T8635000[40.0 <= data$T8635000 & data$T8635000 <= 49.0] <- 40.0
  data$T8635000[50.0 <= data$T8635000 & data$T8635000 <= 59.0] <- 50.0
  data$T8635000[60.0 <= data$T8635000 & data$T8635000 <= 69.0] <- 60.0
  data$T8635000[70.0 <= data$T8635000 & data$T8635000 <= 79.0] <- 70.0
  data$T8635000[80.0 <= data$T8635000 & data$T8635000 <= 89.0] <- 80.0
  data$T8635000[90.0 <= data$T8635000 & data$T8635000 <= 99.0] <- 90.0
  data$T8635000[100.0 <= data$T8635000 & data$T8635000 <= 9.9999999E7] <- 100.0
  data$T8635000 <- factor(data$T8635000, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T8635100 <- factor(data$T8635100, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$T8635200 <- factor(data$T8635200, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$T8653800[1.0 <= data$T8653800 & data$T8653800 <= 9.0] <- 1.0
  data$T8653800[10.0 <= data$T8653800 & data$T8653800 <= 19.0] <- 10.0
  data$T8653800[20.0 <= data$T8653800 & data$T8653800 <= 29.0] <- 20.0
  data$T8653800[30.0 <= data$T8653800 & data$T8653800 <= 39.0] <- 30.0
  data$T8653800[40.0 <= data$T8653800 & data$T8653800 <= 49.0] <- 40.0
  data$T8653800[50.0 <= data$T8653800 & data$T8653800 <= 59.0] <- 50.0
  data$T8653800[60.0 <= data$T8653800 & data$T8653800 <= 69.0] <- 60.0
  data$T8653800[70.0 <= data$T8653800 & data$T8653800 <= 79.0] <- 70.0
  data$T8653800[80.0 <= data$T8653800 & data$T8653800 <= 89.0] <- 80.0
  data$T8653800[90.0 <= data$T8653800 & data$T8653800 <= 99.0] <- 90.0
  data$T8653800[100.0 <= data$T8653800 & data$T8653800 <= 9.9999999E7] <- 100.0
  data$T8653800 <- factor(data$T8653800, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T8653900[1.0 <= data$T8653900 & data$T8653900 <= 9.0] <- 1.0
  data$T8653900[10.0 <= data$T8653900 & data$T8653900 <= 19.0] <- 10.0
  data$T8653900[20.0 <= data$T8653900 & data$T8653900 <= 29.0] <- 20.0
  data$T8653900[30.0 <= data$T8653900 & data$T8653900 <= 39.0] <- 30.0
  data$T8653900[40.0 <= data$T8653900 & data$T8653900 <= 49.0] <- 40.0
  data$T8653900[50.0 <= data$T8653900 & data$T8653900 <= 59.0] <- 50.0
  data$T8653900[60.0 <= data$T8653900 & data$T8653900 <= 69.0] <- 60.0
  data$T8653900[70.0 <= data$T8653900 & data$T8653900 <= 79.0] <- 70.0
  data$T8653900[80.0 <= data$T8653900 & data$T8653900 <= 89.0] <- 80.0
  data$T8653900[90.0 <= data$T8653900 & data$T8653900 <= 99.0] <- 90.0
  data$T8653900[100.0 <= data$T8653900 & data$T8653900 <= 9.9999999E7] <- 100.0
  data$T8653900 <- factor(data$T8653900, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$T8654000 <- factor(data$T8654000, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$T8654100 <- factor(data$T8654100, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$T8723400 <- factor(data$T8723400, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T8735000 <- factor(data$T8735000, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$T8894100 <- factor(data$T8894100, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$T8894300 <- factor(data$T8894300, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by his/her employer and he/she cannot change them on his/her own;",
      "Starting and finishing times are decided by his/her employer but with his/her input;",
      "He/she can decide the time he/she starts and finishes work, within certain limits;",
      "He/she is entirely free to decide when he/she starts and finishes work.",
      "Starting and finishing work times depend on things outside of his/her control and outside of the employer's control"))
  data$T9132600[170.0 <= data$T9132600 & data$T9132600 <= 290.0] <- 170.0
  data$T9132600[370.0 <= data$T9132600 & data$T9132600 <= 490.0] <- 370.0
  data$T9132600[570.0 <= data$T9132600 & data$T9132600 <= 690.0] <- 570.0
  data$T9132600[1070.0 <= data$T9132600 & data$T9132600 <= 3990.0] <- 1070.0
  data$T9132600[4070.0 <= data$T9132600 & data$T9132600 <= 4590.0] <- 4070.0
  data$T9132600[4670.0 <= data$T9132600 & data$T9132600 <= 5790.0] <- 4670.0
  data$T9132600[6070.0 <= data$T9132600 & data$T9132600 <= 6390.0] <- 6070.0
  data$T9132600[6470.0 <= data$T9132600 & data$T9132600 <= 6780.0] <- 6470.0
  data$T9132600[6870.0 <= data$T9132600 & data$T9132600 <= 7190.0] <- 6870.0
  data$T9132600[7270.0 <= data$T9132600 & data$T9132600 <= 7790.0] <- 7270.0
  data$T9132600[7860.0 <= data$T9132600 & data$T9132600 <= 8470.0] <- 7860.0
  data$T9132600[8560.0 <= data$T9132600 & data$T9132600 <= 8690.0] <- 8560.0
  data$T9132600[8770.0 <= data$T9132600 & data$T9132600 <= 9290.0] <- 8770.0
  data$T9132600[9370.0 <= data$T9132600 & data$T9132600 <= 9590.0] <- 9370.0
  data$T9132600[9670.0 <= data$T9132600 & data$T9132600 <= 9890.0] <- 9670.0
  data$T9132600[9950.0 <= data$T9132600 & data$T9132600 <= 9990.0] <- 9950.0
  data$T9132600 <- factor(data$T9132600, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$T9133500[10.0 <= data$T9133500 & data$T9133500 <= 430.0] <- 10.0
  data$T9133500[500.0 <= data$T9133500 & data$T9133500 <= 950.0] <- 500.0
  data$T9133500[1000.0 <= data$T9133500 & data$T9133500 <= 1240.0] <- 1000.0
  data$T9133500[1300.0 <= data$T9133500 & data$T9133500 <= 1530.0] <- 1300.0
  data$T9133500[1540.0 <= data$T9133500 & data$T9133500 <= 1560.0] <- 1540.0
  data$T9133500[1600.0 <= data$T9133500 & data$T9133500 <= 1760.0] <- 1600.0
  data$T9133500[1800.0 <= data$T9133500 & data$T9133500 <= 1860.0] <- 1800.0
  data$T9133500[1900.0 <= data$T9133500 & data$T9133500 <= 1960.0] <- 1900.0
  data$T9133500[2000.0 <= data$T9133500 & data$T9133500 <= 2060.0] <- 2000.0
  data$T9133500[2100.0 <= data$T9133500 & data$T9133500 <= 2150.0] <- 2100.0
  data$T9133500[2200.0 <= data$T9133500 & data$T9133500 <= 2340.0] <- 2200.0
  data$T9133500[2400.0 <= data$T9133500 & data$T9133500 <= 2550.0] <- 2400.0
  data$T9133500[2600.0 <= data$T9133500 & data$T9133500 <= 2760.0] <- 2600.0
  data$T9133500[2800.0 <= data$T9133500 & data$T9133500 <= 2960.0] <- 2800.0
  data$T9133500[3000.0 <= data$T9133500 & data$T9133500 <= 3260.0] <- 3000.0
  data$T9133500[3300.0 <= data$T9133500 & data$T9133500 <= 3650.0] <- 3300.0
  data$T9133500[3700.0 <= data$T9133500 & data$T9133500 <= 3950.0] <- 3700.0
  data$T9133500[4000.0 <= data$T9133500 & data$T9133500 <= 4160.0] <- 4000.0
  data$T9133500[4200.0 <= data$T9133500 & data$T9133500 <= 4250.0] <- 4200.0
  data$T9133500[4300.0 <= data$T9133500 & data$T9133500 <= 4430.0] <- 4300.0
  data$T9133500[4500.0 <= data$T9133500 & data$T9133500 <= 4650.0] <- 4500.0
  data$T9133500[4700.0 <= data$T9133500 & data$T9133500 <= 4960.0] <- 4700.0
  data$T9133500[5000.0 <= data$T9133500 & data$T9133500 <= 5930.0] <- 5000.0
  data$T9133500[6000.0 <= data$T9133500 & data$T9133500 <= 6130.0] <- 6000.0
  data$T9133500[6200.0 <= data$T9133500 & data$T9133500 <= 6940.0] <- 6200.0
  data$T9133500[7000.0 <= data$T9133500 & data$T9133500 <= 7620.0] <- 7000.0
  data$T9133500[7700.0 <= data$T9133500 & data$T9133500 <= 7750.0] <- 7700.0
  data$T9133500[7800.0 <= data$T9133500 & data$T9133500 <= 7850.0] <- 7800.0
  data$T9133500[7900.0 <= data$T9133500 & data$T9133500 <= 8960.0] <- 7900.0
  data$T9133500[9000.0 <= data$T9133500 & data$T9133500 <= 9750.0] <- 9000.0
  data$T9133500[9800.0 <= data$T9133500 & data$T9133500 <= 9840.0] <- 9800.0
  data$T9133500[9950.0 <= data$T9133500 & data$T9133500 <= 9990.0] <- 9950.0
  data$T9133500 <- factor(data$T9133500, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$T9336000 <- factor(data$T9336000, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T9339600 <- factor(data$T9339600, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U0001900 <- factor(data$U0001900, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$U0002001[1980.0 <= data$U0002001 & data$U0002001 <= 1997.0] <- 1980.0
  data$U0002001[1998.0 <= data$U0002001 & data$U0002001 <= 1999.0] <- 1998.0
  data$U0002001[2000.0 <= data$U0002001 & data$U0002001 <= 2001.0] <- 2000.0
  data$U0002001[2002.0 <= data$U0002001 & data$U0002001 <= 2003.0] <- 2002.0
  data$U0002001[2004.0 <= data$U0002001 & data$U0002001 <= 2005.0] <- 2004.0
  data$U0002001[2006.0 <= data$U0002001 & data$U0002001 <= 2007.0] <- 2006.0
  data$U0002001[2008.0 <= data$U0002001 & data$U0002001 <= 2009.0] <- 2008.0
  data$U0002001[2010.0 <= data$U0002001 & data$U0002001 <= 2011.0] <- 2010.0
  data$U0002001[2012.0 <= data$U0002001 & data$U0002001 <= 2013.0] <- 2012.0
  data$U0002001[2014.0 <= data$U0002001 & data$U0002001 <= 2015.0] <- 2014.0
  data$U0002001[2016.0 <= data$U0002001 & data$U0002001 <= 2017.0] <- 2016.0
  data$U0002001 <- factor(data$U0002001, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$U0002101[1980.0 <= data$U0002101 & data$U0002101 <= 1997.0] <- 1980.0
  data$U0002101[1998.0 <= data$U0002101 & data$U0002101 <= 1999.0] <- 1998.0
  data$U0002101[2000.0 <= data$U0002101 & data$U0002101 <= 2001.0] <- 2000.0
  data$U0002101[2002.0 <= data$U0002101 & data$U0002101 <= 2003.0] <- 2002.0
  data$U0002101[2004.0 <= data$U0002101 & data$U0002101 <= 2005.0] <- 2004.0
  data$U0002101[2006.0 <= data$U0002101 & data$U0002101 <= 2007.0] <- 2006.0
  data$U0002101[2008.0 <= data$U0002101 & data$U0002101 <= 2009.0] <- 2008.0
  data$U0002101[2010.0 <= data$U0002101 & data$U0002101 <= 2011.0] <- 2010.0
  data$U0002101[2012.0 <= data$U0002101 & data$U0002101 <= 2013.0] <- 2012.0
  data$U0002101[2014.0 <= data$U0002101 & data$U0002101 <= 2015.0] <- 2014.0
  data$U0002101[2016.0 <= data$U0002101 & data$U0002101 <= 2017.0] <- 2016.0
  data$U0002101 <- factor(data$U0002101, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$U0002201[1980.0 <= data$U0002201 & data$U0002201 <= 1997.0] <- 1980.0
  data$U0002201[1998.0 <= data$U0002201 & data$U0002201 <= 1999.0] <- 1998.0
  data$U0002201[2000.0 <= data$U0002201 & data$U0002201 <= 2001.0] <- 2000.0
  data$U0002201[2002.0 <= data$U0002201 & data$U0002201 <= 2003.0] <- 2002.0
  data$U0002201[2004.0 <= data$U0002201 & data$U0002201 <= 2005.0] <- 2004.0
  data$U0002201[2006.0 <= data$U0002201 & data$U0002201 <= 2007.0] <- 2006.0
  data$U0002201[2008.0 <= data$U0002201 & data$U0002201 <= 2009.0] <- 2008.0
  data$U0002201[2010.0 <= data$U0002201 & data$U0002201 <= 2011.0] <- 2010.0
  data$U0002201[2012.0 <= data$U0002201 & data$U0002201 <= 2013.0] <- 2012.0
  data$U0002201[2014.0 <= data$U0002201 & data$U0002201 <= 2015.0] <- 2014.0
  data$U0002201[2016.0 <= data$U0002201 & data$U0002201 <= 2017.0] <- 2016.0
  data$U0002201 <- factor(data$U0002201, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$U0002301[1980.0 <= data$U0002301 & data$U0002301 <= 1997.0] <- 1980.0
  data$U0002301[1998.0 <= data$U0002301 & data$U0002301 <= 1999.0] <- 1998.0
  data$U0002301[2000.0 <= data$U0002301 & data$U0002301 <= 2001.0] <- 2000.0
  data$U0002301[2002.0 <= data$U0002301 & data$U0002301 <= 2003.0] <- 2002.0
  data$U0002301[2004.0 <= data$U0002301 & data$U0002301 <= 2005.0] <- 2004.0
  data$U0002301[2006.0 <= data$U0002301 & data$U0002301 <= 2007.0] <- 2006.0
  data$U0002301[2008.0 <= data$U0002301 & data$U0002301 <= 2009.0] <- 2008.0
  data$U0002301[2010.0 <= data$U0002301 & data$U0002301 <= 2011.0] <- 2010.0
  data$U0002301[2012.0 <= data$U0002301 & data$U0002301 <= 2013.0] <- 2012.0
  data$U0002301[2014.0 <= data$U0002301 & data$U0002301 <= 2015.0] <- 2014.0
  data$U0002301[2016.0 <= data$U0002301 & data$U0002301 <= 2017.0] <- 2016.0
  data$U0002301 <- factor(data$U0002301, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$U0002401[1980.0 <= data$U0002401 & data$U0002401 <= 1997.0] <- 1980.0
  data$U0002401[1998.0 <= data$U0002401 & data$U0002401 <= 1999.0] <- 1998.0
  data$U0002401[2000.0 <= data$U0002401 & data$U0002401 <= 2001.0] <- 2000.0
  data$U0002401[2002.0 <= data$U0002401 & data$U0002401 <= 2003.0] <- 2002.0
  data$U0002401[2004.0 <= data$U0002401 & data$U0002401 <= 2005.0] <- 2004.0
  data$U0002401[2006.0 <= data$U0002401 & data$U0002401 <= 2007.0] <- 2006.0
  data$U0002401[2008.0 <= data$U0002401 & data$U0002401 <= 2009.0] <- 2008.0
  data$U0002401[2010.0 <= data$U0002401 & data$U0002401 <= 2011.0] <- 2010.0
  data$U0002401[2012.0 <= data$U0002401 & data$U0002401 <= 2013.0] <- 2012.0
  data$U0002401[2014.0 <= data$U0002401 & data$U0002401 <= 2015.0] <- 2014.0
  data$U0002401[2016.0 <= data$U0002401 & data$U0002401 <= 2017.0] <- 2016.0
  data$U0002401 <- factor(data$U0002401, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$U0002501[1980.0 <= data$U0002501 & data$U0002501 <= 1997.0] <- 1980.0
  data$U0002501[1998.0 <= data$U0002501 & data$U0002501 <= 1999.0] <- 1998.0
  data$U0002501[2000.0 <= data$U0002501 & data$U0002501 <= 2001.0] <- 2000.0
  data$U0002501[2002.0 <= data$U0002501 & data$U0002501 <= 2003.0] <- 2002.0
  data$U0002501[2004.0 <= data$U0002501 & data$U0002501 <= 2005.0] <- 2004.0
  data$U0002501[2006.0 <= data$U0002501 & data$U0002501 <= 2007.0] <- 2006.0
  data$U0002501[2008.0 <= data$U0002501 & data$U0002501 <= 2009.0] <- 2008.0
  data$U0002501[2010.0 <= data$U0002501 & data$U0002501 <= 2011.0] <- 2010.0
  data$U0002501[2012.0 <= data$U0002501 & data$U0002501 <= 2013.0] <- 2012.0
  data$U0002501[2014.0 <= data$U0002501 & data$U0002501 <= 2015.0] <- 2014.0
  data$U0002501[2016.0 <= data$U0002501 & data$U0002501 <= 2017.0] <- 2016.0
  data$U0002501 <- factor(data$U0002501, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$U0002601[1980.0 <= data$U0002601 & data$U0002601 <= 1997.0] <- 1980.0
  data$U0002601[1998.0 <= data$U0002601 & data$U0002601 <= 1999.0] <- 1998.0
  data$U0002601[2000.0 <= data$U0002601 & data$U0002601 <= 2001.0] <- 2000.0
  data$U0002601[2002.0 <= data$U0002601 & data$U0002601 <= 2003.0] <- 2002.0
  data$U0002601[2004.0 <= data$U0002601 & data$U0002601 <= 2005.0] <- 2004.0
  data$U0002601[2006.0 <= data$U0002601 & data$U0002601 <= 2007.0] <- 2006.0
  data$U0002601[2008.0 <= data$U0002601 & data$U0002601 <= 2009.0] <- 2008.0
  data$U0002601[2010.0 <= data$U0002601 & data$U0002601 <= 2011.0] <- 2010.0
  data$U0002601[2012.0 <= data$U0002601 & data$U0002601 <= 2013.0] <- 2012.0
  data$U0002601[2014.0 <= data$U0002601 & data$U0002601 <= 2015.0] <- 2014.0
  data$U0002601[2016.0 <= data$U0002601 & data$U0002601 <= 2017.0] <- 2016.0
  data$U0002601 <- factor(data$U0002601, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$U0002701[1980.0 <= data$U0002701 & data$U0002701 <= 1997.0] <- 1980.0
  data$U0002701[1998.0 <= data$U0002701 & data$U0002701 <= 1999.0] <- 1998.0
  data$U0002701[2000.0 <= data$U0002701 & data$U0002701 <= 2001.0] <- 2000.0
  data$U0002701[2002.0 <= data$U0002701 & data$U0002701 <= 2003.0] <- 2002.0
  data$U0002701[2004.0 <= data$U0002701 & data$U0002701 <= 2005.0] <- 2004.0
  data$U0002701[2006.0 <= data$U0002701 & data$U0002701 <= 2007.0] <- 2006.0
  data$U0002701[2008.0 <= data$U0002701 & data$U0002701 <= 2009.0] <- 2008.0
  data$U0002701[2010.0 <= data$U0002701 & data$U0002701 <= 2011.0] <- 2010.0
  data$U0002701[2012.0 <= data$U0002701 & data$U0002701 <= 2013.0] <- 2012.0
  data$U0002701[2014.0 <= data$U0002701 & data$U0002701 <= 2015.0] <- 2014.0
  data$U0002701[2016.0 <= data$U0002701 & data$U0002701 <= 2017.0] <- 2016.0
  data$U0002701 <- factor(data$U0002701, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$U0002801[1980.0 <= data$U0002801 & data$U0002801 <= 1997.0] <- 1980.0
  data$U0002801[1998.0 <= data$U0002801 & data$U0002801 <= 1999.0] <- 1998.0
  data$U0002801[2000.0 <= data$U0002801 & data$U0002801 <= 2001.0] <- 2000.0
  data$U0002801[2002.0 <= data$U0002801 & data$U0002801 <= 2003.0] <- 2002.0
  data$U0002801[2004.0 <= data$U0002801 & data$U0002801 <= 2005.0] <- 2004.0
  data$U0002801[2006.0 <= data$U0002801 & data$U0002801 <= 2007.0] <- 2006.0
  data$U0002801[2008.0 <= data$U0002801 & data$U0002801 <= 2009.0] <- 2008.0
  data$U0002801[2010.0 <= data$U0002801 & data$U0002801 <= 2011.0] <- 2010.0
  data$U0002801[2012.0 <= data$U0002801 & data$U0002801 <= 2013.0] <- 2012.0
  data$U0002801[2014.0 <= data$U0002801 & data$U0002801 <= 2015.0] <- 2014.0
  data$U0002801[2016.0 <= data$U0002801 & data$U0002801 <= 2017.0] <- 2016.0
  data$U0002801 <- factor(data$U0002801, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$U0002901[1980.0 <= data$U0002901 & data$U0002901 <= 1997.0] <- 1980.0
  data$U0002901[1998.0 <= data$U0002901 & data$U0002901 <= 1999.0] <- 1998.0
  data$U0002901[2000.0 <= data$U0002901 & data$U0002901 <= 2001.0] <- 2000.0
  data$U0002901[2002.0 <= data$U0002901 & data$U0002901 <= 2003.0] <- 2002.0
  data$U0002901[2004.0 <= data$U0002901 & data$U0002901 <= 2005.0] <- 2004.0
  data$U0002901[2006.0 <= data$U0002901 & data$U0002901 <= 2007.0] <- 2006.0
  data$U0002901[2008.0 <= data$U0002901 & data$U0002901 <= 2009.0] <- 2008.0
  data$U0002901[2010.0 <= data$U0002901 & data$U0002901 <= 2011.0] <- 2010.0
  data$U0002901[2012.0 <= data$U0002901 & data$U0002901 <= 2013.0] <- 2012.0
  data$U0002901[2014.0 <= data$U0002901 & data$U0002901 <= 2015.0] <- 2014.0
  data$U0002901[2016.0 <= data$U0002901 & data$U0002901 <= 2017.0] <- 2016.0
  data$U0002901 <- factor(data$U0002901, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$U0003001[1980.0 <= data$U0003001 & data$U0003001 <= 1997.0] <- 1980.0
  data$U0003001[1998.0 <= data$U0003001 & data$U0003001 <= 1999.0] <- 1998.0
  data$U0003001[2000.0 <= data$U0003001 & data$U0003001 <= 2001.0] <- 2000.0
  data$U0003001[2002.0 <= data$U0003001 & data$U0003001 <= 2003.0] <- 2002.0
  data$U0003001[2004.0 <= data$U0003001 & data$U0003001 <= 2005.0] <- 2004.0
  data$U0003001[2006.0 <= data$U0003001 & data$U0003001 <= 2007.0] <- 2006.0
  data$U0003001[2008.0 <= data$U0003001 & data$U0003001 <= 2009.0] <- 2008.0
  data$U0003001[2010.0 <= data$U0003001 & data$U0003001 <= 2011.0] <- 2010.0
  data$U0003001[2012.0 <= data$U0003001 & data$U0003001 <= 2013.0] <- 2012.0
  data$U0003001[2014.0 <= data$U0003001 & data$U0003001 <= 2015.0] <- 2014.0
  data$U0003001[2016.0 <= data$U0003001 & data$U0003001 <= 2017.0] <- 2016.0
  data$U0003001 <- factor(data$U0003001, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$U0003101[1980.0 <= data$U0003101 & data$U0003101 <= 1997.0] <- 1980.0
  data$U0003101[1998.0 <= data$U0003101 & data$U0003101 <= 1999.0] <- 1998.0
  data$U0003101[2000.0 <= data$U0003101 & data$U0003101 <= 2001.0] <- 2000.0
  data$U0003101[2002.0 <= data$U0003101 & data$U0003101 <= 2003.0] <- 2002.0
  data$U0003101[2004.0 <= data$U0003101 & data$U0003101 <= 2005.0] <- 2004.0
  data$U0003101[2006.0 <= data$U0003101 & data$U0003101 <= 2007.0] <- 2006.0
  data$U0003101[2008.0 <= data$U0003101 & data$U0003101 <= 2009.0] <- 2008.0
  data$U0003101[2010.0 <= data$U0003101 & data$U0003101 <= 2011.0] <- 2010.0
  data$U0003101[2012.0 <= data$U0003101 & data$U0003101 <= 2013.0] <- 2012.0
  data$U0003101[2014.0 <= data$U0003101 & data$U0003101 <= 2015.0] <- 2014.0
  data$U0003101[2016.0 <= data$U0003101 & data$U0003101 <= 2017.0] <- 2016.0
  data$U0003101 <- factor(data$U0003101, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:"))
  data$U0008800 <- factor(data$U0008800, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$U0011900[0.0 <= data$U0011900 & data$U0011900 <= 10.0] <- 0.0
  data$U0011900[11.0 <= data$U0011900 & data$U0011900 <= 20.0] <- 11.0
  data$U0011900[21.0 <= data$U0011900 & data$U0011900 <= 30.0] <- 21.0
  data$U0011900[31.0 <= data$U0011900 & data$U0011900 <= 35.0] <- 31.0
  data$U0011900[36.0 <= data$U0011900 & data$U0011900 <= 40.0] <- 36.0
  data$U0011900[41.0 <= data$U0011900 & data$U0011900 <= 50.0] <- 41.0
  data$U0011900[51.0 <= data$U0011900 & data$U0011900 <= 60.0] <- 51.0
  data$U0011900[61.0 <= data$U0011900 & data$U0011900 <= 80.0] <- 61.0
  data$U0011900[81.0 <= data$U0011900 & data$U0011900 <= 100.0] <- 81.0
  data$U0011900[101.0 <= data$U0011900 & data$U0011900 <= 168.0] <- 101.0
  data$U0011900 <- factor(data$U0011900, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$U0015000 <- factor(data$U0015000, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$U0464800[1.0 <= data$U0464800 & data$U0464800 <= 9.0] <- 1.0
  data$U0464800[10.0 <= data$U0464800 & data$U0464800 <= 19.0] <- 10.0
  data$U0464800[20.0 <= data$U0464800 & data$U0464800 <= 29.0] <- 20.0
  data$U0464800[30.0 <= data$U0464800 & data$U0464800 <= 39.0] <- 30.0
  data$U0464800[40.0 <= data$U0464800 & data$U0464800 <= 49.0] <- 40.0
  data$U0464800[50.0 <= data$U0464800 & data$U0464800 <= 59.0] <- 50.0
  data$U0464800[60.0 <= data$U0464800 & data$U0464800 <= 69.0] <- 60.0
  data$U0464800[70.0 <= data$U0464800 & data$U0464800 <= 79.0] <- 70.0
  data$U0464800[80.0 <= data$U0464800 & data$U0464800 <= 89.0] <- 80.0
  data$U0464800[90.0 <= data$U0464800 & data$U0464800 <= 99.0] <- 90.0
  data$U0464800[100.0 <= data$U0464800 & data$U0464800 <= 9.9999999E7] <- 100.0
  data$U0464800 <- factor(data$U0464800, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U0464900[1.0 <= data$U0464900 & data$U0464900 <= 9.0] <- 1.0
  data$U0464900[10.0 <= data$U0464900 & data$U0464900 <= 19.0] <- 10.0
  data$U0464900[20.0 <= data$U0464900 & data$U0464900 <= 29.0] <- 20.0
  data$U0464900[30.0 <= data$U0464900 & data$U0464900 <= 39.0] <- 30.0
  data$U0464900[40.0 <= data$U0464900 & data$U0464900 <= 49.0] <- 40.0
  data$U0464900[50.0 <= data$U0464900 & data$U0464900 <= 59.0] <- 50.0
  data$U0464900[60.0 <= data$U0464900 & data$U0464900 <= 69.0] <- 60.0
  data$U0464900[70.0 <= data$U0464900 & data$U0464900 <= 79.0] <- 70.0
  data$U0464900[80.0 <= data$U0464900 & data$U0464900 <= 89.0] <- 80.0
  data$U0464900[90.0 <= data$U0464900 & data$U0464900 <= 99.0] <- 90.0
  data$U0464900[100.0 <= data$U0464900 & data$U0464900 <= 9.9999999E7] <- 100.0
  data$U0464900 <- factor(data$U0464900, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U0465000 <- factor(data$U0465000, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$U0465100 <- factor(data$U0465100, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$U0531400[1.0 <= data$U0531400 & data$U0531400 <= 9.0] <- 1.0
  data$U0531400[10.0 <= data$U0531400 & data$U0531400 <= 19.0] <- 10.0
  data$U0531400[20.0 <= data$U0531400 & data$U0531400 <= 29.0] <- 20.0
  data$U0531400[30.0 <= data$U0531400 & data$U0531400 <= 39.0] <- 30.0
  data$U0531400[40.0 <= data$U0531400 & data$U0531400 <= 49.0] <- 40.0
  data$U0531400[50.0 <= data$U0531400 & data$U0531400 <= 59.0] <- 50.0
  data$U0531400[60.0 <= data$U0531400 & data$U0531400 <= 69.0] <- 60.0
  data$U0531400[70.0 <= data$U0531400 & data$U0531400 <= 79.0] <- 70.0
  data$U0531400[80.0 <= data$U0531400 & data$U0531400 <= 89.0] <- 80.0
  data$U0531400[90.0 <= data$U0531400 & data$U0531400 <= 99.0] <- 90.0
  data$U0531400[100.0 <= data$U0531400 & data$U0531400 <= 9.9999999E7] <- 100.0
  data$U0531400 <- factor(data$U0531400, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U0531500[1.0 <= data$U0531500 & data$U0531500 <= 9.0] <- 1.0
  data$U0531500[10.0 <= data$U0531500 & data$U0531500 <= 19.0] <- 10.0
  data$U0531500[20.0 <= data$U0531500 & data$U0531500 <= 29.0] <- 20.0
  data$U0531500[30.0 <= data$U0531500 & data$U0531500 <= 39.0] <- 30.0
  data$U0531500[40.0 <= data$U0531500 & data$U0531500 <= 49.0] <- 40.0
  data$U0531500[50.0 <= data$U0531500 & data$U0531500 <= 59.0] <- 50.0
  data$U0531500[60.0 <= data$U0531500 & data$U0531500 <= 69.0] <- 60.0
  data$U0531500[70.0 <= data$U0531500 & data$U0531500 <= 79.0] <- 70.0
  data$U0531500[80.0 <= data$U0531500 & data$U0531500 <= 89.0] <- 80.0
  data$U0531500[90.0 <= data$U0531500 & data$U0531500 <= 99.0] <- 90.0
  data$U0531500[100.0 <= data$U0531500 & data$U0531500 <= 9.9999999E7] <- 100.0
  data$U0531500 <- factor(data$U0531500, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U0531600 <- factor(data$U0531600, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$U0531700 <- factor(data$U0531700, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$U0545100[1.0 <= data$U0545100 & data$U0545100 <= 9.0] <- 1.0
  data$U0545100[10.0 <= data$U0545100 & data$U0545100 <= 19.0] <- 10.0
  data$U0545100[20.0 <= data$U0545100 & data$U0545100 <= 29.0] <- 20.0
  data$U0545100[30.0 <= data$U0545100 & data$U0545100 <= 39.0] <- 30.0
  data$U0545100[40.0 <= data$U0545100 & data$U0545100 <= 49.0] <- 40.0
  data$U0545100[50.0 <= data$U0545100 & data$U0545100 <= 59.0] <- 50.0
  data$U0545100[60.0 <= data$U0545100 & data$U0545100 <= 69.0] <- 60.0
  data$U0545100[70.0 <= data$U0545100 & data$U0545100 <= 79.0] <- 70.0
  data$U0545100[80.0 <= data$U0545100 & data$U0545100 <= 89.0] <- 80.0
  data$U0545100[90.0 <= data$U0545100 & data$U0545100 <= 99.0] <- 90.0
  data$U0545100[100.0 <= data$U0545100 & data$U0545100 <= 9.9999999E7] <- 100.0
  data$U0545100 <- factor(data$U0545100, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U0545200[1.0 <= data$U0545200 & data$U0545200 <= 9.0] <- 1.0
  data$U0545200[10.0 <= data$U0545200 & data$U0545200 <= 19.0] <- 10.0
  data$U0545200[20.0 <= data$U0545200 & data$U0545200 <= 29.0] <- 20.0
  data$U0545200[30.0 <= data$U0545200 & data$U0545200 <= 39.0] <- 30.0
  data$U0545200[40.0 <= data$U0545200 & data$U0545200 <= 49.0] <- 40.0
  data$U0545200[50.0 <= data$U0545200 & data$U0545200 <= 59.0] <- 50.0
  data$U0545200[60.0 <= data$U0545200 & data$U0545200 <= 69.0] <- 60.0
  data$U0545200[70.0 <= data$U0545200 & data$U0545200 <= 79.0] <- 70.0
  data$U0545200[80.0 <= data$U0545200 & data$U0545200 <= 89.0] <- 80.0
  data$U0545200[90.0 <= data$U0545200 & data$U0545200 <= 99.0] <- 90.0
  data$U0545200[100.0 <= data$U0545200 & data$U0545200 <= 9.9999999E7] <- 100.0
  data$U0545200 <- factor(data$U0545200, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U0545300 <- factor(data$U0545300, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$U0545400 <- factor(data$U0545400, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$U0566300[1.0 <= data$U0566300 & data$U0566300 <= 9.0] <- 1.0
  data$U0566300[10.0 <= data$U0566300 & data$U0566300 <= 19.0] <- 10.0
  data$U0566300[20.0 <= data$U0566300 & data$U0566300 <= 29.0] <- 20.0
  data$U0566300[30.0 <= data$U0566300 & data$U0566300 <= 39.0] <- 30.0
  data$U0566300[40.0 <= data$U0566300 & data$U0566300 <= 49.0] <- 40.0
  data$U0566300[50.0 <= data$U0566300 & data$U0566300 <= 59.0] <- 50.0
  data$U0566300[60.0 <= data$U0566300 & data$U0566300 <= 69.0] <- 60.0
  data$U0566300[70.0 <= data$U0566300 & data$U0566300 <= 79.0] <- 70.0
  data$U0566300[80.0 <= data$U0566300 & data$U0566300 <= 89.0] <- 80.0
  data$U0566300[90.0 <= data$U0566300 & data$U0566300 <= 99.0] <- 90.0
  data$U0566300[100.0 <= data$U0566300 & data$U0566300 <= 9.9999999E7] <- 100.0
  data$U0566300 <- factor(data$U0566300, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U0566400[1.0 <= data$U0566400 & data$U0566400 <= 9.0] <- 1.0
  data$U0566400[10.0 <= data$U0566400 & data$U0566400 <= 19.0] <- 10.0
  data$U0566400[20.0 <= data$U0566400 & data$U0566400 <= 29.0] <- 20.0
  data$U0566400[30.0 <= data$U0566400 & data$U0566400 <= 39.0] <- 30.0
  data$U0566400[40.0 <= data$U0566400 & data$U0566400 <= 49.0] <- 40.0
  data$U0566400[50.0 <= data$U0566400 & data$U0566400 <= 59.0] <- 50.0
  data$U0566400[60.0 <= data$U0566400 & data$U0566400 <= 69.0] <- 60.0
  data$U0566400[70.0 <= data$U0566400 & data$U0566400 <= 79.0] <- 70.0
  data$U0566400[80.0 <= data$U0566400 & data$U0566400 <= 89.0] <- 80.0
  data$U0566400[90.0 <= data$U0566400 & data$U0566400 <= 99.0] <- 90.0
  data$U0566400[100.0 <= data$U0566400 & data$U0566400 <= 9.9999999E7] <- 100.0
  data$U0566400 <- factor(data$U0566400, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U0566500 <- factor(data$U0566500, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$U0566600 <- factor(data$U0566600, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$U0641000 <- factor(data$U0641000, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U0654900 <- factor(data$U0654900, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$U0820700 <- factor(data$U0820700, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("One week or less",
      "Between 1 and 2 weeks",
      "Between 3 and 4 weeks",
      "4 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$U0820900 <- factor(data$U0820900, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by his/her employer and he/she cannot change them on his/her own;",
      "Starting and finishing times are decided by his/her employer but with his/her input;",
      "He/she can decide the time he/she starts and finishes work, within certain limits;",
      "He/she is entirely free to decide when he/she starts and finishes work.",
      "Starting and finishing work times depend on things outside of his/her control and outside of the employer's control"))
  data$U1030700 <- factor(data$U1030700, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$U1030900 <- factor(data$U1030900, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$U1031100 <- factor(data$U1031100, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("All of the time",
      "Most of the time",
      "Some of the time",
      "None of the time"))
  data$U1125900[170.0 <= data$U1125900 & data$U1125900 <= 290.0] <- 170.0
  data$U1125900[370.0 <= data$U1125900 & data$U1125900 <= 490.0] <- 370.0
  data$U1125900[570.0 <= data$U1125900 & data$U1125900 <= 690.0] <- 570.0
  data$U1125900[1070.0 <= data$U1125900 & data$U1125900 <= 3990.0] <- 1070.0
  data$U1125900[4070.0 <= data$U1125900 & data$U1125900 <= 4590.0] <- 4070.0
  data$U1125900[4670.0 <= data$U1125900 & data$U1125900 <= 5790.0] <- 4670.0
  data$U1125900[6070.0 <= data$U1125900 & data$U1125900 <= 6390.0] <- 6070.0
  data$U1125900[6470.0 <= data$U1125900 & data$U1125900 <= 6780.0] <- 6470.0
  data$U1125900[6870.0 <= data$U1125900 & data$U1125900 <= 7190.0] <- 6870.0
  data$U1125900[7270.0 <= data$U1125900 & data$U1125900 <= 7790.0] <- 7270.0
  data$U1125900[7860.0 <= data$U1125900 & data$U1125900 <= 8470.0] <- 7860.0
  data$U1125900[8560.0 <= data$U1125900 & data$U1125900 <= 8690.0] <- 8560.0
  data$U1125900[8770.0 <= data$U1125900 & data$U1125900 <= 9290.0] <- 8770.0
  data$U1125900[9370.0 <= data$U1125900 & data$U1125900 <= 9590.0] <- 9370.0
  data$U1125900[9670.0 <= data$U1125900 & data$U1125900 <= 9890.0] <- 9670.0
  data$U1125900[9950.0 <= data$U1125900 & data$U1125900 <= 9990.0] <- 9950.0
  data$U1125900 <- factor(data$U1125900, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$U1127100[10.0 <= data$U1127100 & data$U1127100 <= 430.0] <- 10.0
  data$U1127100[500.0 <= data$U1127100 & data$U1127100 <= 950.0] <- 500.0
  data$U1127100[1000.0 <= data$U1127100 & data$U1127100 <= 1240.0] <- 1000.0
  data$U1127100[1300.0 <= data$U1127100 & data$U1127100 <= 1530.0] <- 1300.0
  data$U1127100[1540.0 <= data$U1127100 & data$U1127100 <= 1560.0] <- 1540.0
  data$U1127100[1600.0 <= data$U1127100 & data$U1127100 <= 1760.0] <- 1600.0
  data$U1127100[1800.0 <= data$U1127100 & data$U1127100 <= 1860.0] <- 1800.0
  data$U1127100[1900.0 <= data$U1127100 & data$U1127100 <= 1960.0] <- 1900.0
  data$U1127100[2000.0 <= data$U1127100 & data$U1127100 <= 2060.0] <- 2000.0
  data$U1127100[2100.0 <= data$U1127100 & data$U1127100 <= 2150.0] <- 2100.0
  data$U1127100[2200.0 <= data$U1127100 & data$U1127100 <= 2340.0] <- 2200.0
  data$U1127100[2400.0 <= data$U1127100 & data$U1127100 <= 2550.0] <- 2400.0
  data$U1127100[2600.0 <= data$U1127100 & data$U1127100 <= 2760.0] <- 2600.0
  data$U1127100[2800.0 <= data$U1127100 & data$U1127100 <= 2960.0] <- 2800.0
  data$U1127100[3000.0 <= data$U1127100 & data$U1127100 <= 3260.0] <- 3000.0
  data$U1127100[3300.0 <= data$U1127100 & data$U1127100 <= 3650.0] <- 3300.0
  data$U1127100[3700.0 <= data$U1127100 & data$U1127100 <= 3950.0] <- 3700.0
  data$U1127100[4000.0 <= data$U1127100 & data$U1127100 <= 4160.0] <- 4000.0
  data$U1127100[4200.0 <= data$U1127100 & data$U1127100 <= 4250.0] <- 4200.0
  data$U1127100[4300.0 <= data$U1127100 & data$U1127100 <= 4430.0] <- 4300.0
  data$U1127100[4500.0 <= data$U1127100 & data$U1127100 <= 4650.0] <- 4500.0
  data$U1127100[4700.0 <= data$U1127100 & data$U1127100 <= 4960.0] <- 4700.0
  data$U1127100[5000.0 <= data$U1127100 & data$U1127100 <= 5930.0] <- 5000.0
  data$U1127100[6000.0 <= data$U1127100 & data$U1127100 <= 6130.0] <- 6000.0
  data$U1127100[6200.0 <= data$U1127100 & data$U1127100 <= 6940.0] <- 6200.0
  data$U1127100[7000.0 <= data$U1127100 & data$U1127100 <= 7620.0] <- 7000.0
  data$U1127100[7700.0 <= data$U1127100 & data$U1127100 <= 7750.0] <- 7700.0
  data$U1127100[7800.0 <= data$U1127100 & data$U1127100 <= 7850.0] <- 7800.0
  data$U1127100[7900.0 <= data$U1127100 & data$U1127100 <= 8960.0] <- 7900.0
  data$U1127100[9000.0 <= data$U1127100 & data$U1127100 <= 9750.0] <- 9000.0
  data$U1127100[9800.0 <= data$U1127100 & data$U1127100 <= 9840.0] <- 9800.0
  data$U1127100[9950.0 <= data$U1127100 & data$U1127100 <= 9990.0] <- 9950.0
  data$U1127100 <- factor(data$U1127100, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$U1350100 <- factor(data$U1350100, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U1354200 <- factor(data$U1354200, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U1718000[170.0 <= data$U1718000 & data$U1718000 <= 290.0] <- 170.0
  data$U1718000[370.0 <= data$U1718000 & data$U1718000 <= 490.0] <- 370.0
  data$U1718000[570.0 <= data$U1718000 & data$U1718000 <= 690.0] <- 570.0
  data$U1718000[1070.0 <= data$U1718000 & data$U1718000 <= 3990.0] <- 1070.0
  data$U1718000[4070.0 <= data$U1718000 & data$U1718000 <= 4590.0] <- 4070.0
  data$U1718000[4670.0 <= data$U1718000 & data$U1718000 <= 5790.0] <- 4670.0
  data$U1718000[6070.0 <= data$U1718000 & data$U1718000 <= 6390.0] <- 6070.0
  data$U1718000[6470.0 <= data$U1718000 & data$U1718000 <= 6780.0] <- 6470.0
  data$U1718000[6870.0 <= data$U1718000 & data$U1718000 <= 7190.0] <- 6870.0
  data$U1718000[7270.0 <= data$U1718000 & data$U1718000 <= 7790.0] <- 7270.0
  data$U1718000[7860.0 <= data$U1718000 & data$U1718000 <= 8470.0] <- 7860.0
  data$U1718000[8560.0 <= data$U1718000 & data$U1718000 <= 8690.0] <- 8560.0
  data$U1718000[8770.0 <= data$U1718000 & data$U1718000 <= 9290.0] <- 8770.0
  data$U1718000[9370.0 <= data$U1718000 & data$U1718000 <= 9590.0] <- 9370.0
  data$U1718000[9670.0 <= data$U1718000 & data$U1718000 <= 9890.0] <- 9670.0
  data$U1718000[9950.0 <= data$U1718000 & data$U1718000 <= 9990.0] <- 9950.0
  data$U1718000 <- factor(data$U1718000, 
    levels=c(170.0,370.0,570.0,770.0,1070.0,4070.0,4670.0,5890.0,6070.0,6470.0,6870.0,7270.0,7860.0,8560.0,8770.0,9370.0,9670.0,9950.0), 
    labels=c("170 TO 290: AGRICULTURE, FORESTRY AND FISHERIES",
      "370 TO 490: MINING",
      "570 TO 690: UTILITIES",
      "770: CONSTRUCTION",
      "1070 TO 3990: MANUFACTURING",
      "4070 TO 4590: WHOLESALE TRADE",
      "4670 TO 5790: RETAIL TRADE",
      "5890: ARTS, ENTERTAINMENT AND RECREATION SERVICES",
      "6070 TO 6390: TRANSPORTATION AND WAREHOUSING",
      "6470 TO 6780: INFORMATION AND COMMUNICATION",
      "6870 TO 7190: FINANCE, INSURANCE, AND REAL ESTATE",
      "7270 TO 7790: PROFESSIONAL AND RELATED SERVICES",
      "7860 TO 8470: EDUCATIONAL, HEALTH, AND SOCIAL SERVICES",
      "8560 TO 8690: ENTERTAINMENT, ACCOMODATIONS, AND FOOD SERVICES",
      "8770 TO 9290: OTHER SERVICES",
      "9370 TO 9590: PUBLIC ADMINISTRATION",
      "9670 TO 9890: ACTIVE DUTY MILITARY",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$U1719400[10.0 <= data$U1719400 & data$U1719400 <= 430.0] <- 10.0
  data$U1719400[500.0 <= data$U1719400 & data$U1719400 <= 950.0] <- 500.0
  data$U1719400[1000.0 <= data$U1719400 & data$U1719400 <= 1240.0] <- 1000.0
  data$U1719400[1300.0 <= data$U1719400 & data$U1719400 <= 1530.0] <- 1300.0
  data$U1719400[1540.0 <= data$U1719400 & data$U1719400 <= 1560.0] <- 1540.0
  data$U1719400[1600.0 <= data$U1719400 & data$U1719400 <= 1760.0] <- 1600.0
  data$U1719400[1800.0 <= data$U1719400 & data$U1719400 <= 1860.0] <- 1800.0
  data$U1719400[1900.0 <= data$U1719400 & data$U1719400 <= 1960.0] <- 1900.0
  data$U1719400[2000.0 <= data$U1719400 & data$U1719400 <= 2060.0] <- 2000.0
  data$U1719400[2100.0 <= data$U1719400 & data$U1719400 <= 2150.0] <- 2100.0
  data$U1719400[2200.0 <= data$U1719400 & data$U1719400 <= 2340.0] <- 2200.0
  data$U1719400[2400.0 <= data$U1719400 & data$U1719400 <= 2550.0] <- 2400.0
  data$U1719400[2600.0 <= data$U1719400 & data$U1719400 <= 2760.0] <- 2600.0
  data$U1719400[2800.0 <= data$U1719400 & data$U1719400 <= 2960.0] <- 2800.0
  data$U1719400[3000.0 <= data$U1719400 & data$U1719400 <= 3260.0] <- 3000.0
  data$U1719400[3300.0 <= data$U1719400 & data$U1719400 <= 3650.0] <- 3300.0
  data$U1719400[3700.0 <= data$U1719400 & data$U1719400 <= 3950.0] <- 3700.0
  data$U1719400[4000.0 <= data$U1719400 & data$U1719400 <= 4160.0] <- 4000.0
  data$U1719400[4200.0 <= data$U1719400 & data$U1719400 <= 4250.0] <- 4200.0
  data$U1719400[4300.0 <= data$U1719400 & data$U1719400 <= 4430.0] <- 4300.0
  data$U1719400[4500.0 <= data$U1719400 & data$U1719400 <= 4650.0] <- 4500.0
  data$U1719400[4700.0 <= data$U1719400 & data$U1719400 <= 4960.0] <- 4700.0
  data$U1719400[5000.0 <= data$U1719400 & data$U1719400 <= 5930.0] <- 5000.0
  data$U1719400[6000.0 <= data$U1719400 & data$U1719400 <= 6130.0] <- 6000.0
  data$U1719400[6200.0 <= data$U1719400 & data$U1719400 <= 6940.0] <- 6200.0
  data$U1719400[7000.0 <= data$U1719400 & data$U1719400 <= 7620.0] <- 7000.0
  data$U1719400[7700.0 <= data$U1719400 & data$U1719400 <= 7750.0] <- 7700.0
  data$U1719400[7800.0 <= data$U1719400 & data$U1719400 <= 7850.0] <- 7800.0
  data$U1719400[7900.0 <= data$U1719400 & data$U1719400 <= 8960.0] <- 7900.0
  data$U1719400[9000.0 <= data$U1719400 & data$U1719400 <= 9750.0] <- 9000.0
  data$U1719400[9800.0 <= data$U1719400 & data$U1719400 <= 9840.0] <- 9800.0
  data$U1719400[9950.0 <= data$U1719400 & data$U1719400 <= 9990.0] <- 9950.0
  data$U1719400 <- factor(data$U1719400, 
    levels=c(10.0,500.0,1000.0,1300.0,1540.0,1600.0,1800.0,1900.0,2000.0,2100.0,2200.0,2400.0,2600.0,2800.0,3000.0,3300.0,3700.0,4000.0,4200.0,4300.0,4460.0,4500.0,4700.0,5000.0,6000.0,6200.0,7000.0,7700.0,7800.0,7900.0,9000.0,9800.0,9950.0), 
    labels=c("10 TO 430: EXECUTIVE, ADMINISTRATIVE AND MANAGERIAL",
      "500 TO 950: MANAGEMENT RELATED",
      "1000 TO 1240: MATHEMATICAL AND COMPUTER SCIENTISTS",
      "1300 TO 1530: ENGINEERS, ARCHITECTS, AND SURVEYORS",
      "1540 TO 1560: ENGINEERING AND RELATED TECHNICIANS",
      "1600 TO 1760: PHYSICAL SCIENTISTS",
      "1800 TO 1860: SOCIAL SCIENTISTS AND RELATED WORKERS",
      "1900 TO 1960: LIFE, PHYSICAL, AND SOCIAL SCIENCE TECHNICIANS",
      "2000 TO 2060: COUNSELORS, SOCIAL, AND RELIGIOUS WORKERS",
      "2100 TO 2150: LAWYERS, JUDGES, AND LEGAL SUPPORT WORKERS",
      "2200 TO 2340: TEACHERS",
      "2400 TO 2550: EDUCATION, TRAINING, AND LIBRARY WORKERS",
      "2600 TO 2760: ENTERTAINERS AND PERFORMERS, SPORTS AND RELATED WORKERS",
      "2800 TO 2960: MEDIA AND COMMUNICATION WORKERS",
      "3000 TO 3260: HEALTH DIAGNOSIS AND TREATING PRACTITIONERS",
      "3300 TO 3650: HEALTH CARE TECHNICAL AND SUPPORT",
      "3700 TO 3950: PROTECTIVE SERVICE",
      "4000 TO 4160: FOOD PREPARATIONS AND SERVING RELATED",
      "4200 TO 4250: CLEANING AND BUILDING SERVICE",
      "4300 TO 4430: ENTERTAINMENT ATTENDANTS AND RELATED WORKERS",
      "4460: FUNERAL RELATED OCCUPATIONS",
      "4500 TO 4650: PERSONAL CARE AND SERVICE WORKERS",
      "4700 TO 4960: SALES AND RELATED WORKERS",
      "5000 TO 5930: OFFICE AND ADMINISTRATIVE SUPPORT WORKERS",
      "6000 TO 6130: FARMING, FISHING, AND FORESTRY",
      "6200 TO 6940: CONSTRUCTION TRADES AND EXTRACTION WORKERS",
      "7000 TO 7620: INSTALLATION, MAINTENANCE, AND REPAIR WORKERS",
      "7700 TO 7750: PRODUCTION AND OPERATING WORKERS",
      "7800 TO 7850: FOOD PREPARATION",
      "7900 TO 8960: SETTER, OPERATORS, AND TENDERS",
      "9000 TO 9750: TRANSPORTATION AND MATERIAL MOVING WORKERS",
      "9800 TO 9840: MILITARY SPECIFIC OCCUPATIONS",
      "9950 TO 9990: ACS SPECIAL CODES"))
  data$U1838600 <- factor(data$U1838600, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Northeast (CT, ME, MA, NH, NJ, NY, PA, RI, VT)",
      "North Central (IL, IN, IA, KS, MI, MN, MO, NE, OH, ND, SD, WI)",
      "South (AL, AR, DE, DC, FL, GA, KY, LA, MD, MS, NC, OK, SC, TN , TX, VA, WV)",
      "West (AK, AZ, CA, CO, HI, ID, MT, NV, NM, OR, UT, WA, WY)"))
  data$U1838701[1980.0 <= data$U1838701 & data$U1838701 <= 1997.0] <- 1980.0
  data$U1838701[1998.0 <= data$U1838701 & data$U1838701 <= 1999.0] <- 1998.0
  data$U1838701[2000.0 <= data$U1838701 & data$U1838701 <= 2001.0] <- 2000.0
  data$U1838701[2002.0 <= data$U1838701 & data$U1838701 <= 2003.0] <- 2002.0
  data$U1838701[2004.0 <= data$U1838701 & data$U1838701 <= 2005.0] <- 2004.0
  data$U1838701[2006.0 <= data$U1838701 & data$U1838701 <= 2007.0] <- 2006.0
  data$U1838701[2008.0 <= data$U1838701 & data$U1838701 <= 2009.0] <- 2008.0
  data$U1838701[2010.0 <= data$U1838701 & data$U1838701 <= 2011.0] <- 2010.0
  data$U1838701[2012.0 <= data$U1838701 & data$U1838701 <= 2013.0] <- 2012.0
  data$U1838701[2014.0 <= data$U1838701 & data$U1838701 <= 2015.0] <- 2014.0
  data$U1838701[2016.0 <= data$U1838701 & data$U1838701 <= 2017.0] <- 2016.0
  data$U1838701[2018.0 <= data$U1838701 & data$U1838701 <= 2019.0] <- 2018.0
  data$U1838701 <- factor(data$U1838701, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0,2018.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:",
      "2018 TO 2019:"))
  data$U1838801[1980.0 <= data$U1838801 & data$U1838801 <= 1997.0] <- 1980.0
  data$U1838801[1998.0 <= data$U1838801 & data$U1838801 <= 1999.0] <- 1998.0
  data$U1838801[2000.0 <= data$U1838801 & data$U1838801 <= 2001.0] <- 2000.0
  data$U1838801[2002.0 <= data$U1838801 & data$U1838801 <= 2003.0] <- 2002.0
  data$U1838801[2004.0 <= data$U1838801 & data$U1838801 <= 2005.0] <- 2004.0
  data$U1838801[2006.0 <= data$U1838801 & data$U1838801 <= 2007.0] <- 2006.0
  data$U1838801[2008.0 <= data$U1838801 & data$U1838801 <= 2009.0] <- 2008.0
  data$U1838801[2010.0 <= data$U1838801 & data$U1838801 <= 2011.0] <- 2010.0
  data$U1838801[2012.0 <= data$U1838801 & data$U1838801 <= 2013.0] <- 2012.0
  data$U1838801[2014.0 <= data$U1838801 & data$U1838801 <= 2015.0] <- 2014.0
  data$U1838801[2016.0 <= data$U1838801 & data$U1838801 <= 2017.0] <- 2016.0
  data$U1838801[2018.0 <= data$U1838801 & data$U1838801 <= 2019.0] <- 2018.0
  data$U1838801 <- factor(data$U1838801, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0,2018.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:",
      "2018 TO 2019:"))
  data$U1838901[1980.0 <= data$U1838901 & data$U1838901 <= 1997.0] <- 1980.0
  data$U1838901[1998.0 <= data$U1838901 & data$U1838901 <= 1999.0] <- 1998.0
  data$U1838901[2000.0 <= data$U1838901 & data$U1838901 <= 2001.0] <- 2000.0
  data$U1838901[2002.0 <= data$U1838901 & data$U1838901 <= 2003.0] <- 2002.0
  data$U1838901[2004.0 <= data$U1838901 & data$U1838901 <= 2005.0] <- 2004.0
  data$U1838901[2006.0 <= data$U1838901 & data$U1838901 <= 2007.0] <- 2006.0
  data$U1838901[2008.0 <= data$U1838901 & data$U1838901 <= 2009.0] <- 2008.0
  data$U1838901[2010.0 <= data$U1838901 & data$U1838901 <= 2011.0] <- 2010.0
  data$U1838901[2012.0 <= data$U1838901 & data$U1838901 <= 2013.0] <- 2012.0
  data$U1838901[2014.0 <= data$U1838901 & data$U1838901 <= 2015.0] <- 2014.0
  data$U1838901[2016.0 <= data$U1838901 & data$U1838901 <= 2017.0] <- 2016.0
  data$U1838901[2018.0 <= data$U1838901 & data$U1838901 <= 2019.0] <- 2018.0
  data$U1838901 <- factor(data$U1838901, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0,2018.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:",
      "2018 TO 2019:"))
  data$U1839001[1980.0 <= data$U1839001 & data$U1839001 <= 1997.0] <- 1980.0
  data$U1839001[1998.0 <= data$U1839001 & data$U1839001 <= 1999.0] <- 1998.0
  data$U1839001[2000.0 <= data$U1839001 & data$U1839001 <= 2001.0] <- 2000.0
  data$U1839001[2002.0 <= data$U1839001 & data$U1839001 <= 2003.0] <- 2002.0
  data$U1839001[2004.0 <= data$U1839001 & data$U1839001 <= 2005.0] <- 2004.0
  data$U1839001[2006.0 <= data$U1839001 & data$U1839001 <= 2007.0] <- 2006.0
  data$U1839001[2008.0 <= data$U1839001 & data$U1839001 <= 2009.0] <- 2008.0
  data$U1839001[2010.0 <= data$U1839001 & data$U1839001 <= 2011.0] <- 2010.0
  data$U1839001[2012.0 <= data$U1839001 & data$U1839001 <= 2013.0] <- 2012.0
  data$U1839001[2014.0 <= data$U1839001 & data$U1839001 <= 2015.0] <- 2014.0
  data$U1839001[2016.0 <= data$U1839001 & data$U1839001 <= 2017.0] <- 2016.0
  data$U1839001[2018.0 <= data$U1839001 & data$U1839001 <= 2019.0] <- 2018.0
  data$U1839001 <- factor(data$U1839001, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0,2018.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:",
      "2018 TO 2019:"))
  data$U1839101[1980.0 <= data$U1839101 & data$U1839101 <= 1997.0] <- 1980.0
  data$U1839101[1998.0 <= data$U1839101 & data$U1839101 <= 1999.0] <- 1998.0
  data$U1839101[2000.0 <= data$U1839101 & data$U1839101 <= 2001.0] <- 2000.0
  data$U1839101[2002.0 <= data$U1839101 & data$U1839101 <= 2003.0] <- 2002.0
  data$U1839101[2004.0 <= data$U1839101 & data$U1839101 <= 2005.0] <- 2004.0
  data$U1839101[2006.0 <= data$U1839101 & data$U1839101 <= 2007.0] <- 2006.0
  data$U1839101[2008.0 <= data$U1839101 & data$U1839101 <= 2009.0] <- 2008.0
  data$U1839101[2010.0 <= data$U1839101 & data$U1839101 <= 2011.0] <- 2010.0
  data$U1839101[2012.0 <= data$U1839101 & data$U1839101 <= 2013.0] <- 2012.0
  data$U1839101[2014.0 <= data$U1839101 & data$U1839101 <= 2015.0] <- 2014.0
  data$U1839101[2016.0 <= data$U1839101 & data$U1839101 <= 2017.0] <- 2016.0
  data$U1839101[2018.0 <= data$U1839101 & data$U1839101 <= 2019.0] <- 2018.0
  data$U1839101 <- factor(data$U1839101, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0,2018.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:",
      "2018 TO 2019:"))
  data$U1839201[1980.0 <= data$U1839201 & data$U1839201 <= 1997.0] <- 1980.0
  data$U1839201[1998.0 <= data$U1839201 & data$U1839201 <= 1999.0] <- 1998.0
  data$U1839201[2000.0 <= data$U1839201 & data$U1839201 <= 2001.0] <- 2000.0
  data$U1839201[2002.0 <= data$U1839201 & data$U1839201 <= 2003.0] <- 2002.0
  data$U1839201[2004.0 <= data$U1839201 & data$U1839201 <= 2005.0] <- 2004.0
  data$U1839201[2006.0 <= data$U1839201 & data$U1839201 <= 2007.0] <- 2006.0
  data$U1839201[2008.0 <= data$U1839201 & data$U1839201 <= 2009.0] <- 2008.0
  data$U1839201[2010.0 <= data$U1839201 & data$U1839201 <= 2011.0] <- 2010.0
  data$U1839201[2012.0 <= data$U1839201 & data$U1839201 <= 2013.0] <- 2012.0
  data$U1839201[2014.0 <= data$U1839201 & data$U1839201 <= 2015.0] <- 2014.0
  data$U1839201[2016.0 <= data$U1839201 & data$U1839201 <= 2017.0] <- 2016.0
  data$U1839201[2018.0 <= data$U1839201 & data$U1839201 <= 2019.0] <- 2018.0
  data$U1839201 <- factor(data$U1839201, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0,2018.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:",
      "2018 TO 2019:"))
  data$U1839301[1980.0 <= data$U1839301 & data$U1839301 <= 1997.0] <- 1980.0
  data$U1839301[1998.0 <= data$U1839301 & data$U1839301 <= 1999.0] <- 1998.0
  data$U1839301[2000.0 <= data$U1839301 & data$U1839301 <= 2001.0] <- 2000.0
  data$U1839301[2002.0 <= data$U1839301 & data$U1839301 <= 2003.0] <- 2002.0
  data$U1839301[2004.0 <= data$U1839301 & data$U1839301 <= 2005.0] <- 2004.0
  data$U1839301[2006.0 <= data$U1839301 & data$U1839301 <= 2007.0] <- 2006.0
  data$U1839301[2008.0 <= data$U1839301 & data$U1839301 <= 2009.0] <- 2008.0
  data$U1839301[2010.0 <= data$U1839301 & data$U1839301 <= 2011.0] <- 2010.0
  data$U1839301[2012.0 <= data$U1839301 & data$U1839301 <= 2013.0] <- 2012.0
  data$U1839301[2014.0 <= data$U1839301 & data$U1839301 <= 2015.0] <- 2014.0
  data$U1839301[2016.0 <= data$U1839301 & data$U1839301 <= 2017.0] <- 2016.0
  data$U1839301[2018.0 <= data$U1839301 & data$U1839301 <= 2019.0] <- 2018.0
  data$U1839301 <- factor(data$U1839301, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0,2018.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:",
      "2018 TO 2019:"))
  data$U1839401[1980.0 <= data$U1839401 & data$U1839401 <= 1997.0] <- 1980.0
  data$U1839401[1998.0 <= data$U1839401 & data$U1839401 <= 1999.0] <- 1998.0
  data$U1839401[2000.0 <= data$U1839401 & data$U1839401 <= 2001.0] <- 2000.0
  data$U1839401[2002.0 <= data$U1839401 & data$U1839401 <= 2003.0] <- 2002.0
  data$U1839401[2004.0 <= data$U1839401 & data$U1839401 <= 2005.0] <- 2004.0
  data$U1839401[2006.0 <= data$U1839401 & data$U1839401 <= 2007.0] <- 2006.0
  data$U1839401[2008.0 <= data$U1839401 & data$U1839401 <= 2009.0] <- 2008.0
  data$U1839401[2010.0 <= data$U1839401 & data$U1839401 <= 2011.0] <- 2010.0
  data$U1839401[2012.0 <= data$U1839401 & data$U1839401 <= 2013.0] <- 2012.0
  data$U1839401[2014.0 <= data$U1839401 & data$U1839401 <= 2015.0] <- 2014.0
  data$U1839401[2016.0 <= data$U1839401 & data$U1839401 <= 2017.0] <- 2016.0
  data$U1839401[2018.0 <= data$U1839401 & data$U1839401 <= 2019.0] <- 2018.0
  data$U1839401 <- factor(data$U1839401, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0,2018.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:",
      "2018 TO 2019:"))
  data$U1839501[1980.0 <= data$U1839501 & data$U1839501 <= 1997.0] <- 1980.0
  data$U1839501[1998.0 <= data$U1839501 & data$U1839501 <= 1999.0] <- 1998.0
  data$U1839501[2000.0 <= data$U1839501 & data$U1839501 <= 2001.0] <- 2000.0
  data$U1839501[2002.0 <= data$U1839501 & data$U1839501 <= 2003.0] <- 2002.0
  data$U1839501[2004.0 <= data$U1839501 & data$U1839501 <= 2005.0] <- 2004.0
  data$U1839501[2006.0 <= data$U1839501 & data$U1839501 <= 2007.0] <- 2006.0
  data$U1839501[2008.0 <= data$U1839501 & data$U1839501 <= 2009.0] <- 2008.0
  data$U1839501[2010.0 <= data$U1839501 & data$U1839501 <= 2011.0] <- 2010.0
  data$U1839501[2012.0 <= data$U1839501 & data$U1839501 <= 2013.0] <- 2012.0
  data$U1839501[2014.0 <= data$U1839501 & data$U1839501 <= 2015.0] <- 2014.0
  data$U1839501[2016.0 <= data$U1839501 & data$U1839501 <= 2017.0] <- 2016.0
  data$U1839501[2018.0 <= data$U1839501 & data$U1839501 <= 2019.0] <- 2018.0
  data$U1839501 <- factor(data$U1839501, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0,2018.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:",
      "2018 TO 2019:"))
  data$U1839601[1980.0 <= data$U1839601 & data$U1839601 <= 1997.0] <- 1980.0
  data$U1839601[1998.0 <= data$U1839601 & data$U1839601 <= 1999.0] <- 1998.0
  data$U1839601[2000.0 <= data$U1839601 & data$U1839601 <= 2001.0] <- 2000.0
  data$U1839601[2002.0 <= data$U1839601 & data$U1839601 <= 2003.0] <- 2002.0
  data$U1839601[2004.0 <= data$U1839601 & data$U1839601 <= 2005.0] <- 2004.0
  data$U1839601[2006.0 <= data$U1839601 & data$U1839601 <= 2007.0] <- 2006.0
  data$U1839601[2008.0 <= data$U1839601 & data$U1839601 <= 2009.0] <- 2008.0
  data$U1839601[2010.0 <= data$U1839601 & data$U1839601 <= 2011.0] <- 2010.0
  data$U1839601[2012.0 <= data$U1839601 & data$U1839601 <= 2013.0] <- 2012.0
  data$U1839601[2014.0 <= data$U1839601 & data$U1839601 <= 2015.0] <- 2014.0
  data$U1839601[2016.0 <= data$U1839601 & data$U1839601 <= 2017.0] <- 2016.0
  data$U1839601[2018.0 <= data$U1839601 & data$U1839601 <= 2019.0] <- 2018.0
  data$U1839601 <- factor(data$U1839601, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0,2018.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:",
      "2018 TO 2019:"))
  data$U1839701[1980.0 <= data$U1839701 & data$U1839701 <= 1997.0] <- 1980.0
  data$U1839701[1998.0 <= data$U1839701 & data$U1839701 <= 1999.0] <- 1998.0
  data$U1839701[2000.0 <= data$U1839701 & data$U1839701 <= 2001.0] <- 2000.0
  data$U1839701[2002.0 <= data$U1839701 & data$U1839701 <= 2003.0] <- 2002.0
  data$U1839701[2004.0 <= data$U1839701 & data$U1839701 <= 2005.0] <- 2004.0
  data$U1839701[2006.0 <= data$U1839701 & data$U1839701 <= 2007.0] <- 2006.0
  data$U1839701[2008.0 <= data$U1839701 & data$U1839701 <= 2009.0] <- 2008.0
  data$U1839701[2010.0 <= data$U1839701 & data$U1839701 <= 2011.0] <- 2010.0
  data$U1839701[2012.0 <= data$U1839701 & data$U1839701 <= 2013.0] <- 2012.0
  data$U1839701[2014.0 <= data$U1839701 & data$U1839701 <= 2015.0] <- 2014.0
  data$U1839701[2016.0 <= data$U1839701 & data$U1839701 <= 2017.0] <- 2016.0
  data$U1839701[2018.0 <= data$U1839701 & data$U1839701 <= 2019.0] <- 2018.0
  data$U1839701 <- factor(data$U1839701, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0,2018.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:",
      "2018 TO 2019:"))
  data$U1839801[1980.0 <= data$U1839801 & data$U1839801 <= 1997.0] <- 1980.0
  data$U1839801[1998.0 <= data$U1839801 & data$U1839801 <= 1999.0] <- 1998.0
  data$U1839801[2000.0 <= data$U1839801 & data$U1839801 <= 2001.0] <- 2000.0
  data$U1839801[2002.0 <= data$U1839801 & data$U1839801 <= 2003.0] <- 2002.0
  data$U1839801[2004.0 <= data$U1839801 & data$U1839801 <= 2005.0] <- 2004.0
  data$U1839801[2006.0 <= data$U1839801 & data$U1839801 <= 2007.0] <- 2006.0
  data$U1839801[2008.0 <= data$U1839801 & data$U1839801 <= 2009.0] <- 2008.0
  data$U1839801[2010.0 <= data$U1839801 & data$U1839801 <= 2011.0] <- 2010.0
  data$U1839801[2012.0 <= data$U1839801 & data$U1839801 <= 2013.0] <- 2012.0
  data$U1839801[2014.0 <= data$U1839801 & data$U1839801 <= 2015.0] <- 2014.0
  data$U1839801[2016.0 <= data$U1839801 & data$U1839801 <= 2017.0] <- 2016.0
  data$U1839801[2018.0 <= data$U1839801 & data$U1839801 <= 2019.0] <- 2018.0
  data$U1839801 <- factor(data$U1839801, 
    levels=c(1980.0,1998.0,2000.0,2002.0,2004.0,2006.0,2008.0,2010.0,2012.0,2014.0,2016.0,2018.0), 
    labels=c("1980 TO 1997:",
      "1998 TO 1999:",
      "2000 TO 2001:",
      "2002 TO 2003:",
      "2004 TO 2005:",
      "2006 TO 2007:",
      "2008 TO 2009:",
      "2010 TO 2011:",
      "2012 TO 2013:",
      "2014 TO 2015:",
      "2016 TO 2017:",
      "2018 TO 2019:"))
  data$U1845400 <- factor(data$U1845400, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$U1849100[0.0 <= data$U1849100 & data$U1849100 <= 10.0] <- 0.0
  data$U1849100[11.0 <= data$U1849100 & data$U1849100 <= 20.0] <- 11.0
  data$U1849100[21.0 <= data$U1849100 & data$U1849100 <= 30.0] <- 21.0
  data$U1849100[31.0 <= data$U1849100 & data$U1849100 <= 35.0] <- 31.0
  data$U1849100[36.0 <= data$U1849100 & data$U1849100 <= 40.0] <- 36.0
  data$U1849100[41.0 <= data$U1849100 & data$U1849100 <= 50.0] <- 41.0
  data$U1849100[51.0 <= data$U1849100 & data$U1849100 <= 60.0] <- 51.0
  data$U1849100[61.0 <= data$U1849100 & data$U1849100 <= 80.0] <- 61.0
  data$U1849100[81.0 <= data$U1849100 & data$U1849100 <= 100.0] <- 81.0
  data$U1849100[101.0 <= data$U1849100 & data$U1849100 <= 168.0] <- 101.0
  data$U1849100 <- factor(data$U1849100, 
    levels=c(0.0,11.0,21.0,31.0,36.0,41.0,51.0,61.0,81.0,101.0), 
    labels=c("0 TO 10: Hours",
      "11 TO 20: Hours",
      "21 TO 30: Hours",
      "31 TO 35: Hours",
      "36 TO 40: Hours",
      "41 TO 50: Hours",
      "51 TO 60: Hours",
      "61 TO 80: Hours",
      "81 TO 100: Hours",
      "101 TO 168: Hours"))
  data$U1853200 <- factor(data$U1853200, 
    levels=c(0.0,1.0,2.0), 
    labels=c("Rural",
      "Urban",
      "Unknown"))
  data$U2383600[1.0 <= data$U2383600 & data$U2383600 <= 9.0] <- 1.0
  data$U2383600[10.0 <= data$U2383600 & data$U2383600 <= 19.0] <- 10.0
  data$U2383600[20.0 <= data$U2383600 & data$U2383600 <= 29.0] <- 20.0
  data$U2383600[30.0 <= data$U2383600 & data$U2383600 <= 39.0] <- 30.0
  data$U2383600[40.0 <= data$U2383600 & data$U2383600 <= 49.0] <- 40.0
  data$U2383600[50.0 <= data$U2383600 & data$U2383600 <= 59.0] <- 50.0
  data$U2383600[60.0 <= data$U2383600 & data$U2383600 <= 69.0] <- 60.0
  data$U2383600[70.0 <= data$U2383600 & data$U2383600 <= 79.0] <- 70.0
  data$U2383600[80.0 <= data$U2383600 & data$U2383600 <= 89.0] <- 80.0
  data$U2383600[90.0 <= data$U2383600 & data$U2383600 <= 99.0] <- 90.0
  data$U2383600[100.0 <= data$U2383600 & data$U2383600 <= 9.9999999E7] <- 100.0
  data$U2383600 <- factor(data$U2383600, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U2383700[1.0 <= data$U2383700 & data$U2383700 <= 9.0] <- 1.0
  data$U2383700[10.0 <= data$U2383700 & data$U2383700 <= 19.0] <- 10.0
  data$U2383700[20.0 <= data$U2383700 & data$U2383700 <= 29.0] <- 20.0
  data$U2383700[30.0 <= data$U2383700 & data$U2383700 <= 39.0] <- 30.0
  data$U2383700[40.0 <= data$U2383700 & data$U2383700 <= 49.0] <- 40.0
  data$U2383700[50.0 <= data$U2383700 & data$U2383700 <= 59.0] <- 50.0
  data$U2383700[60.0 <= data$U2383700 & data$U2383700 <= 69.0] <- 60.0
  data$U2383700[70.0 <= data$U2383700 & data$U2383700 <= 79.0] <- 70.0
  data$U2383700[80.0 <= data$U2383700 & data$U2383700 <= 89.0] <- 80.0
  data$U2383700[90.0 <= data$U2383700 & data$U2383700 <= 99.0] <- 90.0
  data$U2383700[100.0 <= data$U2383700 & data$U2383700 <= 9.9999999E7] <- 100.0
  data$U2383700 <- factor(data$U2383700, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U2383800 <- factor(data$U2383800, 
    levels=c(11.0,12.0,13.0,14.0,15.0), 
    labels=c("3 days or less",
      "4 to 7 days",
      "Between 1 and 2 weeks",
      "3 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$U2383900 <- factor(data$U2383900, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$U2451700[1.0 <= data$U2451700 & data$U2451700 <= 9.0] <- 1.0
  data$U2451700[10.0 <= data$U2451700 & data$U2451700 <= 19.0] <- 10.0
  data$U2451700[20.0 <= data$U2451700 & data$U2451700 <= 29.0] <- 20.0
  data$U2451700[30.0 <= data$U2451700 & data$U2451700 <= 39.0] <- 30.0
  data$U2451700[40.0 <= data$U2451700 & data$U2451700 <= 49.0] <- 40.0
  data$U2451700[50.0 <= data$U2451700 & data$U2451700 <= 59.0] <- 50.0
  data$U2451700[60.0 <= data$U2451700 & data$U2451700 <= 69.0] <- 60.0
  data$U2451700[70.0 <= data$U2451700 & data$U2451700 <= 79.0] <- 70.0
  data$U2451700[80.0 <= data$U2451700 & data$U2451700 <= 89.0] <- 80.0
  data$U2451700[90.0 <= data$U2451700 & data$U2451700 <= 99.0] <- 90.0
  data$U2451700[100.0 <= data$U2451700 & data$U2451700 <= 9.9999999E7] <- 100.0
  data$U2451700 <- factor(data$U2451700, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U2451800[1.0 <= data$U2451800 & data$U2451800 <= 9.0] <- 1.0
  data$U2451800[10.0 <= data$U2451800 & data$U2451800 <= 19.0] <- 10.0
  data$U2451800[20.0 <= data$U2451800 & data$U2451800 <= 29.0] <- 20.0
  data$U2451800[30.0 <= data$U2451800 & data$U2451800 <= 39.0] <- 30.0
  data$U2451800[40.0 <= data$U2451800 & data$U2451800 <= 49.0] <- 40.0
  data$U2451800[50.0 <= data$U2451800 & data$U2451800 <= 59.0] <- 50.0
  data$U2451800[60.0 <= data$U2451800 & data$U2451800 <= 69.0] <- 60.0
  data$U2451800[70.0 <= data$U2451800 & data$U2451800 <= 79.0] <- 70.0
  data$U2451800[80.0 <= data$U2451800 & data$U2451800 <= 89.0] <- 80.0
  data$U2451800[90.0 <= data$U2451800 & data$U2451800 <= 99.0] <- 90.0
  data$U2451800[100.0 <= data$U2451800 & data$U2451800 <= 9.9999999E7] <- 100.0
  data$U2451800 <- factor(data$U2451800, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U2451900 <- factor(data$U2451900, 
    levels=c(11.0,12.0,13.0,14.0,15.0), 
    labels=c("3 days or less",
      "4 to 7 days",
      "Between 1 and 2 weeks",
      "3 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$U2452000 <- factor(data$U2452000, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$U2472100[1.0 <= data$U2472100 & data$U2472100 <= 9.0] <- 1.0
  data$U2472100[10.0 <= data$U2472100 & data$U2472100 <= 19.0] <- 10.0
  data$U2472100[20.0 <= data$U2472100 & data$U2472100 <= 29.0] <- 20.0
  data$U2472100[30.0 <= data$U2472100 & data$U2472100 <= 39.0] <- 30.0
  data$U2472100[40.0 <= data$U2472100 & data$U2472100 <= 49.0] <- 40.0
  data$U2472100[50.0 <= data$U2472100 & data$U2472100 <= 59.0] <- 50.0
  data$U2472100[60.0 <= data$U2472100 & data$U2472100 <= 69.0] <- 60.0
  data$U2472100[70.0 <= data$U2472100 & data$U2472100 <= 79.0] <- 70.0
  data$U2472100[80.0 <= data$U2472100 & data$U2472100 <= 89.0] <- 80.0
  data$U2472100[90.0 <= data$U2472100 & data$U2472100 <= 99.0] <- 90.0
  data$U2472100[100.0 <= data$U2472100 & data$U2472100 <= 9.9999999E7] <- 100.0
  data$U2472100 <- factor(data$U2472100, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U2472200[1.0 <= data$U2472200 & data$U2472200 <= 9.0] <- 1.0
  data$U2472200[10.0 <= data$U2472200 & data$U2472200 <= 19.0] <- 10.0
  data$U2472200[20.0 <= data$U2472200 & data$U2472200 <= 29.0] <- 20.0
  data$U2472200[30.0 <= data$U2472200 & data$U2472200 <= 39.0] <- 30.0
  data$U2472200[40.0 <= data$U2472200 & data$U2472200 <= 49.0] <- 40.0
  data$U2472200[50.0 <= data$U2472200 & data$U2472200 <= 59.0] <- 50.0
  data$U2472200[60.0 <= data$U2472200 & data$U2472200 <= 69.0] <- 60.0
  data$U2472200[70.0 <= data$U2472200 & data$U2472200 <= 79.0] <- 70.0
  data$U2472200[80.0 <= data$U2472200 & data$U2472200 <= 89.0] <- 80.0
  data$U2472200[90.0 <= data$U2472200 & data$U2472200 <= 99.0] <- 90.0
  data$U2472200[100.0 <= data$U2472200 & data$U2472200 <= 9.9999999E7] <- 100.0
  data$U2472200 <- factor(data$U2472200, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U2472300 <- factor(data$U2472300, 
    levels=c(11.0,12.0,13.0,14.0,15.0), 
    labels=c("3 days or less",
      "4 to 7 days",
      "Between 1 and 2 weeks",
      "3 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$U2472400 <- factor(data$U2472400, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$U2497400[1.0 <= data$U2497400 & data$U2497400 <= 9.0] <- 1.0
  data$U2497400[10.0 <= data$U2497400 & data$U2497400 <= 19.0] <- 10.0
  data$U2497400[20.0 <= data$U2497400 & data$U2497400 <= 29.0] <- 20.0
  data$U2497400[30.0 <= data$U2497400 & data$U2497400 <= 39.0] <- 30.0
  data$U2497400[40.0 <= data$U2497400 & data$U2497400 <= 49.0] <- 40.0
  data$U2497400[50.0 <= data$U2497400 & data$U2497400 <= 59.0] <- 50.0
  data$U2497400[60.0 <= data$U2497400 & data$U2497400 <= 69.0] <- 60.0
  data$U2497400[70.0 <= data$U2497400 & data$U2497400 <= 79.0] <- 70.0
  data$U2497400[80.0 <= data$U2497400 & data$U2497400 <= 89.0] <- 80.0
  data$U2497400[90.0 <= data$U2497400 & data$U2497400 <= 99.0] <- 90.0
  data$U2497400[100.0 <= data$U2497400 & data$U2497400 <= 9.9999999E7] <- 100.0
  data$U2497400 <- factor(data$U2497400, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U2497500[1.0 <= data$U2497500 & data$U2497500 <= 9.0] <- 1.0
  data$U2497500[10.0 <= data$U2497500 & data$U2497500 <= 19.0] <- 10.0
  data$U2497500[20.0 <= data$U2497500 & data$U2497500 <= 29.0] <- 20.0
  data$U2497500[30.0 <= data$U2497500 & data$U2497500 <= 39.0] <- 30.0
  data$U2497500[40.0 <= data$U2497500 & data$U2497500 <= 49.0] <- 40.0
  data$U2497500[50.0 <= data$U2497500 & data$U2497500 <= 59.0] <- 50.0
  data$U2497500[60.0 <= data$U2497500 & data$U2497500 <= 69.0] <- 60.0
  data$U2497500[70.0 <= data$U2497500 & data$U2497500 <= 79.0] <- 70.0
  data$U2497500[80.0 <= data$U2497500 & data$U2497500 <= 89.0] <- 80.0
  data$U2497500[90.0 <= data$U2497500 & data$U2497500 <= 99.0] <- 90.0
  data$U2497500[100.0 <= data$U2497500 & data$U2497500 <= 9.9999999E7] <- 100.0
  data$U2497500 <- factor(data$U2497500, 
    levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0,100.0), 
    labels=c("0",
      "1 TO 9",
      "10 TO 19",
      "20 TO 29",
      "30 TO 39",
      "40 TO 49",
      "50 TO 59",
      "60 TO 69",
      "70 TO 79",
      "80 TO 89",
      "90 TO 99",
      "100 TO 99999999: 100+"))
  data$U2497600 <- factor(data$U2497600, 
    levels=c(11.0,12.0,13.0,14.0,15.0), 
    labels=c("3 days or less",
      "4 to 7 days",
      "Between 1 and 2 weeks",
      "3 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$U2497700 <- factor(data$U2497700, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by my employer and I cannot change them on my own;",
      "Starting and finishing times are decided by my employer but with my input;",
      "I can decide the time I start and finish work, within certain limits;",
      "I am entirely free to decide when I start and finish work.",
      "When I start and finish work depends on things outside of my control and outside of my employer's control"))
  data$U2577100 <- factor(data$U2577100, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U2593500 <- factor(data$U2593500, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Like it very much",
      "Like it fairly well",
      "Think it is OK",
      "Dislike it somewhat",
      "Dislike it very much"))
  data$U2762800 <- factor(data$U2762800, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("3 days or less",
      "4 to 7 days",
      "Between 1 and 2 weeks",
      "3 weeks or more",
      "ALWAYS WORKS SAME SCHEDULE"))
  data$U2763100 <- factor(data$U2763100, 
    levels=c(1.0,2.0,3.0,4.0,5.0), 
    labels=c("Starting and finishing times are decided by his/her employer and he/she cannot change them on his/her own;",
      "Starting and finishing times are decided by his/her employer but with his/her input;",
      "He/she can decide the time he/she starts and finishes work, within certain limits;",
      "He/she is entirely free to decide when he/she starts and finishes work.",
      "Starting and finishing work times depend on things outside of his/her control and outside of the employer's control"))
  data$U2964800 <- factor(data$U2964800, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("ALL OF THE TIME",
      "MOST OF THE TIME",
      "SOME OF THE TIME",
      "NONE OF THE TIME"))
  data$U2965000 <- factor(data$U2965000, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("ALL OF THE TIME",
      "MOST OF THE TIME",
      "SOME OF THE TIME",
      "NONE OF THE TIME"))
  data$U2965200 <- factor(data$U2965200, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("ALL OF THE TIME",
      "MOST OF THE TIME",
      "SOME OF THE TIME",
      "NONE OF THE TIME"))
  data$U3092700 <- factor(data$U3092700, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U3097800 <- factor(data$U3097800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  return(data)
}

varlabels <- c("PUBID - YTH ID CODE 1997",
  "R IN UNION/EMP ASSOC? L1 1997",
  "RS JOB SATISFACTION L1 1997",
  "KEY!SEX (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "CV_CENSUS_REGION 1997",
  "CV_HRS_PER_WEEK L1 1997",
  "CV_URBAN-RURAL 1997",
  "CV_SAMPLE_TYPE 1997",
  "KEY!RACE_ETHNICITY (SYMBOL) 1997",
  "R IN UNION/EMP ASSOC? L1 1998",
  "RS JOB SATISFACTION L1 1998",
  "YEMP MILFLAG (ROS ITEM) L1 1998",
  "CV_CENSUS_REGION 1998",
  "CV_HGC_9899 1998",
  "CV_HRS_PER_WEEK L1 1998",
  "CV_URBAN-RURAL 1998",
  "R IN UNION/EMP ASSOC? L1 1999",
  "RS JOB SATISFACTION L1 1999",
  "YEMP MILFLAG (ROS ITEM) L1 1999",
  "CV_CENSUS_REGION 1999",
  "CV_HGC_9900 1999",
  "CV_HRS_PER_WEEK L1 1999",
  "CV_URBAN-RURAL 1999",
  "R IN UNION/EMP ASSOC? L1 2000",
  "RS JOB SATISFACTION L1 2000",
  "HOW OFT R BEEN NERVOUS PERSON 2000",
  "HOW OFT R FELT DOWN OR BLUE 2000",
  "HOW OFT R DEPRESSED LAST MONTH 2000",
  "YEMP MILFLAG (ROS ITEM) L1 2000",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2000",
  "CV_CENSUS_REGION 2000",
  "CV_HGC_0001 2000",
  "CV_HRS_PER_WEEK L1 2000",
  "CV_URBAN-RURAL 2000",
  "R IN UNION/EMP ASSOC? L1 2001",
  "RS JOB SATISFACTION L1 2001",
  "YEMP MILFLAG (ROS ITEM) L1 2001",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2001",
  "CV_CENSUS_REGION 2001",
  "CV_HGC_0102 2001",
  "CV_HRS_PER_WEEK L1 2001",
  "CV_URBAN-RURAL 2001",
  "R IN UNION/EMP ASSOC? L1 2002",
  "RS JOB SATISFACTION L1 2002",
  "HOW OFT R BEEN NERVOUS PERSON 2002",
  "HOW OFT R FELT DOWN OR BLUE 2002",
  "HOW OFT R DEPRESSED LAST MONTH 2002",
  "YEMP MILFLAG (ROS ITEM) L1 2002",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2002",
  "CV_CENSUS_REGION 2002",
  "CV_HGC_0203 2002",
  "CV_HRS_PER_WEEK L1 2002",
  "CV_URBAN-RURAL 2002",
  "YEMP IND CODE (ROS ITEM) L1 2002",
  "YEMP OCC/JOB CODE (ROS ITEM) L1 2002",
  "CV_CENSUS_REGION 2003",
  "CV_HGC_0304 2003",
  "CV_HRS_PER_WEEK L1 2003",
  "CV_URBAN-RURAL 2003",
  "R IN UNION/EMP ASSOC? L1 2003",
  "RS JOB SATISFACTION L1 2003",
  "YEMP MILFLAG (ROS ITEM) L1 2003",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2003",
  "YEMP IND CODE (REVCODE) (ROS ITEM) L1 1997",
  "YEMP OCC/JOB CODE (REVCODE) (ROS ITEM) L1 1997",
  "YEMP IND CODE (REVCODE) (ROS ITEM) L1 1998",
  "YEMP OCC/JOB CODE (REVCODE) (ROS ITEM) L1 1998",
  "YEMP IND CODE (REVCODE) (ROS ITEM) L1 1999",
  "YEMP OCC/JOB CODE (REVCODE) (ROS ITEM) L1 1999",
  "YEMP IND CODE (REVCODE) (ROS ITEM) L1 2000",
  "YEMP OCC/JOB CODE (REVCODE) (ROS ITEM) L1 2000",
  "YEMP IND CODE (REVCODE) (ROS ITEM) L1 2001",
  "YEMP OCC/JOB CODE (REVCODE) (ROS ITEM) L1 2001",
  "YEMP IND CODE (ROS ITEM) L1 2003",
  "YEMP OCC/JOB CODE (ROS ITEM) L1 2003",
  "CV_CENSUS_REGION 2004",
  "CV_HGC_0405 2004",
  "CV_HRS_PER_WEEK L1 2004",
  "CV_URBAN-RURAL 2004",
  "R IN UNION/EMP ASSOC? L1 2004",
  "RS JOB SATISFACTION L1 2004",
  "HOW OFT R BEEN NERVOUS PERSON 2004",
  "HOW OFT R FELT DOWN OR BLUE 2004",
  "HOW OFT R DEPRESSED LAST MONTH 2004",
  "YEMP IND CODE (ROS ITEM) L1 2004",
  "YEMP OCC/JOB CODE (ROS ITEM) L1 2004",
  "YEMP MILFLAG (ROS ITEM) L1 2004",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2004",
  "CV_CENSUS_REGION 2005",
  "CV_HGC_0506 2005",
  "CV_HRS_PER_WEEK L1 2005",
  "CV_URBAN-RURAL 2005",
  "R IN UNION/EMP ASSOC? L1 2005",
  "RS JOB SATISFACTION L1 2005",
  "YEMP IND CODE (ROS ITEM) L1 2005",
  "YEMP OCC/JOB CODE (ROS ITEM) L1 2005",
  "YEMP MILFLAG (ROS ITEM) L1 2005",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2005",
  "CV_CENSUS_REGION 2006",
  "CV_HGC_0607 2006",
  "CV_HRS_PER_WEEK L1 2006",
  "CV_URBAN-RURAL 2006",
  "R IN UNION/EMP ASSOC? L1 2006",
  "RS JOB SATISFACTION L1 2006",
  "HOW OFT R BEEN NERVOUS PERSON 2006",
  "HOW OFT R FELT DOWN OR BLUE 2006",
  "HOW OFT R DEPRESSED LAST MONTH 2006",
  "YEMP IND CODE (ROS ITEM) L1 2006",
  "YEMP OCC/JOB CODE (ROS ITEM) L1 2006",
  "YEMP MILFLAG (ROS ITEM) L1 2006",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2006",
  "CV_CENSUS_REGION 2007",
  "CV_HGC_0708 2007",
  "CV_HRS_PER_WEEK L1 2007",
  "CV_URBAN-RURAL 2007",
  "R IN UNION/EMP ASSOC? L1 2007",
  "RS JOB SATISFACTION L1 2007",
  "YEMP IND CODE (ROS ITEM) L1 2007",
  "YEMP OCC/JOB CODE (ROS ITEM) L1 2007",
  "YEMP MILFLAG (ROS ITEM) L1 2007",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2007",
  "CV_CENSUS_REGION 2008",
  "CV_HGC_0809 2008",
  "CV_HRS_PER_WEEK L1 2008",
  "CV_URBAN-RURAL 2008",
  "R IN UNION/EMP ASSOC? L1 2008",
  "RS JOB SATISFACTION L1 2008",
  "HOW OFT R BEEN NERVOUS PERSON 2008",
  "HOW OFT R FELT DOWN OR BLUE 2008",
  "HOW OFT R DEPRESSED LAST MONTH 2008",
  "YEMP IND CODE (ROS ITEM) L1 2008",
  "YEMP OCC/JOB CODE (ROS ITEM) L1 2008",
  "YEMP MILFLAG (ROS ITEM) L1 2008",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2008",
  "CV_CENSUS_REGION 2009",
  "CV_HGC_0910 2009",
  "CV_HRS_PER_WEEK L1 2009",
  "CV_URBAN-RURAL 2009",
  "R IN UNION/EMP ASSOC? L1 2009",
  "RS JOB SATISFACTION L1 2009",
  "YEMP IND CODE (ROS ITEM) L1 2009",
  "YEMP OCC/JOB CODE (ROS ITEM) L1 2009",
  "YEMP MILFLAG (ROS ITEM) L1 2009",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2009",
  "CV_CENSUS_REGION 2010",
  "CV_HGC_1011 2010",
  "CV_HRS_PER_WEEK L1 2010",
  "CV_URBAN-RURAL 2010",
  "R IN UNION/EMP ASSOC? L1 2010",
  "RS JOB SATISFACTION L1 2010",
  "HOW OFT R BEEN NERVOUS PERSON 2010",
  "HOW OFT R FELT DOWN OR BLUE 2010",
  "HOW OFT R DEPRESSED LAST MONTH 2010",
  "YEMP IND CODE (ROS ITEM) L1 2010",
  "YEMP OCC/JOB CODE (ROS ITEM) L1 2010",
  "YEMP MILFLAG (ROS ITEM) L1 2010",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2010",
  "CV_CENSUS_REGION 2011",
  "CV_HGC_1112 2011",
  "CV_HRS_PER_WEEK L1 2011",
  "CV_URBAN-RURAL 2011",
  "MOST HRS/WK WRK CURR/MR PAST MO L1 2011",
  "FWST HRS/WK WRK CURR/MR PAST MO L1 2011",
  "RS WORK SCHEDULE NOTICE CURR/MR L1 2011",
  "RS WORK SCHEDULE DECISION CURR/MR L1 2011",
  "MOST HRS/WK WRK CURR/MR PAST MO < 13WKS L1 2011",
  "FWST HRS/WK WRK CURR/MR PAST MO < 13WKS L1 2011",
  "RS WORK SCHEDULE NOTICE CURR/MR < 13WKS L1 2011",
  "RS WORK SCHEDULE DECISION CURR/MR <13WKS L1 2011",
  "MOST HRS/WK WRK CURR/MR PAST MO L1 2011",
  "FWST HRS/WK WRK CURR/MR PAST MO L1 2011",
  "RS WORK SCHEDULE NOTICE CURR/MR L1 2011",
  "RS WORK SCHEDULE DECISION CURR/MR L1 2011",
  "MOST HRS/WK WRK NHRLY CURR/MR PAST MO L1 2011",
  "FWST HRS/WK WRK NHRLY CURR/MR PAST MO L1 2011",
  "RS WORK SCHEDULE NOTICE NHRLY CURR/MR L1 2011",
  "RS WORK SCHEDULE DECISION CURR/MR L1 2011",
  "R IN UNION/EMP ASSOC? L1 2011",
  "RS JOB SATISFACTION L1 2011",
  "SPOPAR WORK SCHEDULE NOTICE L1 2011",
  "SPOPAR WORK SCHEDULE DECISION L1 2011",
  "YEMP IND CODE (ROS ITEM) L1 2011",
  "YEMP OCC/JOB CODE (ROS ITEM) L1 2011",
  "YEMP MILFLAG (ROS ITEM) L1 2011",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2011",
  "CV_CENSUS_REGION 2013",
  "CV_CHILD_BIRTH_DATE L1 2013",
  "CV_CHILD_BIRTH_DATE L2 2013",
  "CV_CHILD_BIRTH_DATE L3 2013",
  "CV_CHILD_BIRTH_DATE L4 2013",
  "CV_CHILD_BIRTH_DATE L5 2013",
  "CV_CHILD_BIRTH_DATE L6 2013",
  "CV_CHILD_BIRTH_DATE L7 2013",
  "CV_CHILD_BIRTH_DATE L8 2013",
  "CV_CHILD_BIRTH_DATE L9 2013",
  "CV_CHILD_BIRTH_DATE L10 2013",
  "CV_CHILD_BIRTH_DATE L11 2013",
  "CV_HGC_1314 2013",
  "CV_HRS_PER_WEEK L1 2013",
  "CV_URBAN-RURAL 2013",
  "MOST HRS/WK WRK CURR/MR PAST MO L1 2013",
  "FWST HRS/WK WRK CURR/MR PAST MO L1 2013",
  "RS WORK SCHEDULE NOTICE CURR/MR L1 2013",
  "RS WORK SCHEDULE DECISION CURR/MR L1 2013",
  "MOST HRS/WK WRK CURR/MR PAST MO < 26WKS L1 2013",
  "FWST HRS/WK WRK CURR/MR PAST MO < 26WKS L1 2013",
  "RS WORK SCHEDULE NOTICE CURR/MR < 26WKS L1 2013",
  "RS WORK SCHEDULE DECISION CURR/MR <26WKS L1 2013",
  "MOST HRS/WK WRK CURR/MR PAST MO L1 2013",
  "FWST HRS/WK WRK CURR/MR PAST MO L1 2013",
  "RS WORK SCHEDULE NOTICE CURR/MR L1 2013",
  "RS WORK SCHEDULE DECISION CURR/MR L1 2013",
  "MOST HRS/WK WRK NHRLY CURR/MR PAST MO L1 2013",
  "FWST HRS/WK WRK NHRLY CURR/MR PAST MO L1 2013",
  "RS WORK SCHEDULE NOTICE NHRLY CURR/MR L1 2013",
  "RS WORK SCHEDULE DECISION CURR/MR L1 2013",
  "R IN UNION/EMP ASSOC? L1 2013",
  "RS JOB SATISFACTION L1 2013",
  "SPOPAR WORK SCHEDULE NOTICE L1 2013",
  "SPOPAR WORK SCHEDULE DECISION L1 2013",
  "YEMP IND CODE (ROS ITEM) L1 2013",
  "YEMP OCC/JOB CODE (ROS ITEM) L1 2013",
  "YEMP MILFLAG (ROS ITEM) L1 2013",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2013",
  "CV_CENSUS_REGION 2015",
  "CV_CHILD_BIRTH_DATE L1 2015",
  "CV_CHILD_BIRTH_DATE L2 2015",
  "CV_CHILD_BIRTH_DATE L3 2015",
  "CV_CHILD_BIRTH_DATE L4 2015",
  "CV_CHILD_BIRTH_DATE L5 2015",
  "CV_CHILD_BIRTH_DATE L6 2015",
  "CV_CHILD_BIRTH_DATE L7 2015",
  "CV_CHILD_BIRTH_DATE L8 2015",
  "CV_CHILD_BIRTH_DATE L9 2015",
  "CV_CHILD_BIRTH_DATE L10 2015",
  "CV_CHILD_BIRTH_DATE L11 2015",
  "CV_CHILD_BIRTH_DATE L12 2015",
  "CV_HGC_EVER 2015",
  "CV_HRS_PER_WEEK L1 2015",
  "CV_URBAN-RURAL 2015",
  "MOST HRS/WK WRK CURR/MR PAST MO L1 2015",
  "FWST HRS/WK WRK CURR/MR PAST MO L1 2015",
  "RS WORK SCHEDULE NOTICE CURR/MR L1 2015",
  "RS WORK SCHEDULE DECISION CURR/MR L1 2015",
  "MOST HRS/WK WRK CURR/MR PAST MO < 13WKS L1 2015",
  "FWST HRS/WK WRK CURR/MR PAST MO < 13WKS L1 2015",
  "RS WORK SCHEDULE NOTICE CURR/MR < 13WKS L1 2015",
  "RS WORK SCHEDULE DECISION CURR/MR <13WKS L1 2015",
  "MOST HRS/WK WRK CURR/MR PAST MO L1 2015",
  "FWST HRS/WK WRK CURR/MR PAST MO L1 2015",
  "RS WORK SCHEDULE NOTICE CURR/MR L1 2015",
  "RS WORK SCHEDULE DECISION CURR/MR L1 2015",
  "MOST HRS/WK WRK NHRLY CURR/MR PAST MO L1 2015",
  "FWST HRS/WK WRK NHRLY CURR/MR PAST MO L1 2015",
  "RS WORK SCHEDULE NOTICE NHRLY CURR/MR L1 2015",
  "RS WORK SCHEDULE DECISION CURR/MR L1 2015",
  "R IN UNION/EMP ASSOC? L1 2015",
  "RS JOB SATISFACTION L1 2015",
  "SPOPAR WORK SCHEDULE NOTICE L1 2015",
  "SPOPAR WORK SCHEDULE DECISION L1 2015",
  "HOW OFT R BEEN NERVOUS PERSON 2015",
  "HOW OFT R FELT DOWN OR BLUE 2015",
  "HOW OFT R DEPRESSED LAST MONTH 2015",
  "YEMP IND CODE (ROS ITEM) L1 2015",
  "YEMP OCC/JOB CODE (ROS ITEM) L1 2015",
  "YEMP MILFLAG (ROS ITEM) L1 2015",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2015",
  "YEMP IND CODE (ROS ITEM) L1 2017",
  "YEMP OCC/JOB CODE (ROS ITEM) L1 2017",
  "CV_CENSUS_REGION 2017",
  "CV_CHILD_BIRTH_DATE L1 2017",
  "CV_CHILD_BIRTH_DATE L2 2017",
  "CV_CHILD_BIRTH_DATE L3 2017",
  "CV_CHILD_BIRTH_DATE L4 2017",
  "CV_CHILD_BIRTH_DATE L5 2017",
  "CV_CHILD_BIRTH_DATE L6 2017",
  "CV_CHILD_BIRTH_DATE L7 2017",
  "CV_CHILD_BIRTH_DATE L8 2017",
  "CV_CHILD_BIRTH_DATE L9 2017",
  "CV_CHILD_BIRTH_DATE L10 2017",
  "CV_CHILD_BIRTH_DATE L11 2017",
  "CV_CHILD_BIRTH_DATE L12 2017",
  "CV_HGC_EVER 2017",
  "CV_HRS_PER_WEEK L1 2017",
  "CV_URBAN-RURAL 2017",
  "MOST HRS/WK WRK CURR/MR PAST MO L1 2017",
  "FWST HRS/WK WRK CURR/MR PAST MO L1 2017",
  "RS WORK SCHEDULE NOTICE - REV CURR/MR L1 2017",
  "RS WORK SCHEDULE DECISION CURR/MR L1 2017",
  "MOST HRS/WK WRK CURR/MR PAST MO < 26WKS L1 2017",
  "FWST HRS/WK WRK CURR/MR PAST MO < 26WKS L1 2017",
  "RS WORK SCHEDULE NOTICE - REV CURR/MR < 13WKS L1 2017",
  "RS WORK SCHEDULE DECISION CURR/MR <13WKS L1 2017",
  "MOST HRS/WK WRK CURR/MR PAST MO L1 2017",
  "FWST HRS/WK WRK CURR/MR PAST MO L1 2017",
  "RS WORK SCHEDULE NOTICE - REV CURR/MR L1 2017",
  "RS WORK SCHEDULE DECISION CURR/MR L1 2017",
  "MOST HRS/WK WRK NHRLY CURR/MR PAST MO L1 2017",
  "FWST HRS/WK WRK NHRLY CURR/MR PAST MO L1 2017",
  "RS WORK SCHEDULE NOTICE - REV NHRLY CURR/MR L1 2017",
  "RS WORK SCHEDULE DECISION CURR/MR L1 2017",
  "R IN UNION/EMP ASSOC? L1 2017",
  "RS JOB SATISFACTION L1 2017",
  "SPOPAR WORK SCHEDULE NOTICE L1 2017",
  "SPOPAR WORK SCHEDULE DECISION L1 2017",
  "HOW OFT R BEEN NERVOUS PERSON 2017",
  "HOW OFT R FELT DOWN OR BLUE 2017",
  "HOW OFT R DEPRESSED LAST MONTH 2017",
  "YEMP MILFLAG (ROS ITEM) L1 2017",
  "YEMP SELF EMPLOYED (ROS ITEM) L1 2017"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("PUBID_1997",
    "YEMP-101100.01_1997",
    "YEMP-101200.01_1997",
    "KEY_SEX_1997",
    "KEY_BDATE_M_1997",
    "KEY_BDATE_Y_1997",
    "CV_CENSUS_REGION_1997",
    "CV_HRS_PER_WEEK.01_1997",
    "CV_URBAN-RURAL_1997",
    "CV_SAMPLE_TYPE_1997",
    "KEY_RACE_ETHNICITY_1997",
    "YEMP-101100.01_1998",
    "YEMP-101200.01_1998",
    "YEMP_MILFLAG.01_1998",
    "CV_CENSUS_REGION_1998",
    "CV_HGC_9899_1998",
    "CV_HRS_PER_WEEK.01_1998",
    "CV_URBAN-RURAL_1998",
    "YEMP-101100.01_1999",
    "YEMP-101200.01_1999",
    "YEMP_MILFLAG.01_1999",
    "CV_CENSUS_REGION_1999",
    "CV_HGC_9900_1999",
    "CV_HRS_PER_WEEK.01_1999",
    "CV_URBAN-RURAL_1999",
    "YEMP-101100.01_2000",
    "YEMP-101200.01_2000",
    "YSAQ-282C_2000",
    "YSAQ-282E_2000",
    "YSAQ-282G_2000",
    "YEMP_MILFLAG.01_2000",
    "YEMP_SELFEMP.01_2000",
    "CV_CENSUS_REGION_2000",
    "CV_HGC_0001_2000",
    "CV_HRS_PER_WEEK.01_2000",
    "CV_URBAN-RURAL_2000",
    "YEMP-101100.01_2001",
    "YEMP-101200.01_2001",
    "YEMP_MILFLAG.01_2001",
    "YEMP_SELFEMP.01_2001",
    "CV_CENSUS_REGION_2001",
    "CV_HGC_0102_2001",
    "CV_HRS_PER_WEEK.01_2001",
    "CV_URBAN-RURAL_2001",
    "YEMP-101100.01_2002",
    "YEMP-101200.01_2002",
    "YSAQ-282C_2002",
    "YSAQ-282E_2002",
    "YSAQ-282G_2002",
    "YEMP_MILFLAG.01_2002",
    "YEMP_SELFEMP.01_2002",
    "CV_CENSUS_REGION_2002",
    "CV_HGC_0203_2002",
    "CV_HRS_PER_WEEK.01_2002",
    "CV_URBAN-RURAL_2002",
    "YEMP_INDCODE-2002.01_2002",
    "YEMP_OCCODE-2002.01_2002",
    "CV_CENSUS_REGION_2003",
    "CV_HGC_0304_2003",
    "CV_HRS_PER_WEEK.01_2003",
    "CV_URBAN-RURAL_2003",
    "YEMP-101100.01_2003",
    "YEMP-101200.01_2003",
    "YEMP_MILFLAG.01_2003",
    "YEMP_SELFEMP.01_2003",
    "YEMP_INDCODE-2002.01_1997",
    "YEMP_OCCODE-2002.01_1997",
    "YEMP_INDCODE-2002.01_1998",
    "YEMP_OCCODE-2002.01_1998",
    "YEMP_INDCODE-2002.01_1999",
    "YEMP_OCCODE-2002.01_1999",
    "YEMP_INDCODE-2002.01_2000",
    "YEMP_OCCODE-2002.01_2000",
    "YEMP_INDCODE-2002.01_2001",
    "YEMP_OCCODE-2002.01_2001",
    "YEMP_INDCODE-2002.01_2003",
    "YEMP_OCCODE-2002.01_2003",
    "CV_CENSUS_REGION_2004",
    "CV_HGC_0405_2004",
    "CV_HRS_PER_WEEK.01_2004",
    "CV_URBAN-RURAL_2004",
    "YEMP-101100.01_2004",
    "YEMP-101200.01_2004",
    "YSAQ-282C_2004",
    "YSAQ-282E_2004",
    "YSAQ-282G_2004",
    "YEMP_INDCODE-2002.01_2004",
    "YEMP_OCCODE-2002.01_2004",
    "YEMP_MILFLAG.01_2004",
    "YEMP_SELFEMP.01_2004",
    "CV_CENSUS_REGION_2005",
    "CV_HGC_0506_2005",
    "CV_HRS_PER_WEEK.01_2005",
    "CV_URBAN-RURAL_2005",
    "YEMP-101100.01_2005",
    "YEMP-101200.01_2005",
    "YEMP_INDCODE-2002.01_2005",
    "YEMP_OCCODE-2002.01_2005",
    "YEMP_MILFLAG.01_2005",
    "YEMP_SELFEMP.01_2005",
    "CV_CENSUS_REGION_2006",
    "CV_HGC_0607_2006",
    "CV_HRS_PER_WEEK.01_2006",
    "CV_URBAN-RURAL_2006",
    "YEMP-101100.01_2006",
    "YEMP-101200.01_2006",
    "YSAQ-282C_2006",
    "YSAQ-282E_2006",
    "YSAQ-282G_2006",
    "YEMP_INDCODE-2002.01_2006",
    "YEMP_OCCODE-2002.01_2006",
    "YEMP_MILFLAG.01_2006",
    "YEMP_SELFEMP.01_2006",
    "CV_CENSUS_REGION_2007",
    "CV_HGC_0708_2007",
    "CV_HRS_PER_WEEK.01_2007",
    "CV_URBAN-RURAL_2007",
    "YEMP-101100.01_2007",
    "YEMP-101200.01_2007",
    "YEMP_INDCODE-2002.01_2007",
    "YEMP_OCCODE-2002.01_2007",
    "YEMP_MILFLAG.01_2007",
    "YEMP_SELFEMP.01_2007",
    "CV_CENSUS_REGION_2008",
    "CV_HGC_0809_2008",
    "CV_HRS_PER_WEEK.01_2008",
    "CV_URBAN-RURAL_2008",
    "YEMP-101100.01_2008",
    "YEMP-101200.01_2008",
    "YSAQ-282C_2008",
    "YSAQ-282E_2008",
    "YSAQ-282G_2008",
    "YEMP_INDCODE-2002.01_2008",
    "YEMP_OCCODE-2002.01_2008",
    "YEMP_MILFLAG.01_2008",
    "YEMP_SELFEMP.01_2008",
    "CV_CENSUS_REGION_2009",
    "CV_HGC_0910_2009",
    "CV_HRS_PER_WEEK.01_2009",
    "CV_URBAN-RURAL_2009",
    "YEMP-101100.01_2009",
    "YEMP-101200.01_2009",
    "YEMP_INDCODE-2002.01_2009",
    "YEMP_OCCODE-2002.01_2009",
    "YEMP_MILFLAG.01_2009",
    "YEMP_SELFEMP.01_2009",
    "CV_CENSUS_REGION_2010",
    "CV_HGC_1011_2010",
    "CV_HRS_PER_WEEK.01_2010",
    "CV_URBAN-RURAL_2010",
    "YEMP-101100.01_2010",
    "YEMP-101200.01_2010",
    "YSAQ-282C_2010",
    "YSAQ-282E_2010",
    "YSAQ-282G_2010",
    "YEMP_INDCODE-2002.01_2010",
    "YEMP_OCCODE-2002.01_2010",
    "YEMP_MILFLAG.01_2010",
    "YEMP_SELFEMP.01_2010",
    "CV_CENSUS_REGION_2011",
    "CV_HGC_1112_2011",
    "CV_HRS_PER_WEEK.01_2011",
    "CV_URBAN-RURAL_2011",
    "YEMP-WS1D.01_2011",
    "YEMP-WS2D.01_2011",
    "YEMP-WS3D.01_2011",
    "YEMP-WS4D.01_2011",
    "YEMP-WS1A.01_2011",
    "YEMP-WS2A.01_2011",
    "YEMP-WS3A.01_2011",
    "YEMP-WS4A.01_2011",
    "YEMP-WS1B.01_2011",
    "YEMP-WS2B.01_2011",
    "YEMP-WS3B.01_2011",
    "YEMP-WS4B.01_2011",
    "YEMP-WS1C.01_2011",
    "YEMP-WS2C.01_2011",
    "YEMP-WS3C.01_2011",
    "YEMP-WS4C.01_2011",
    "YEMP-101100.01_2011",
    "YEMP-101200.01_2011",
    "YMAR-652.01_2011",
    "YMAR-653.01_2011",
    "YEMP_INDCODE-2002.01_2011",
    "YEMP_OCCODE-2002.01_2011",
    "YEMP_MILFLAG.01_2011",
    "YEMP_SELFEMP.01_2011",
    "CV_CENSUS_REGION_2013",
    "CV_CHILD_BIRTH_DATE.01~Y_2013",
    "CV_CHILD_BIRTH_DATE.02~Y_2013",
    "CV_CHILD_BIRTH_DATE.03~Y_2013",
    "CV_CHILD_BIRTH_DATE.04~Y_2013",
    "CV_CHILD_BIRTH_DATE.05~Y_2013",
    "CV_CHILD_BIRTH_DATE.06~Y_2013",
    "CV_CHILD_BIRTH_DATE.07~Y_2013",
    "CV_CHILD_BIRTH_DATE.08~Y_2013",
    "CV_CHILD_BIRTH_DATE.09~Y_2013",
    "CV_CHILD_BIRTH_DATE.10~Y_2013",
    "CV_CHILD_BIRTH_DATE.11~Y_2013",
    "CV_HGC_1314_2013",
    "CV_HRS_PER_WEEK.01_2013",
    "CV_URBAN-RURAL_2013",
    "YEMP-WS1D.01_2013",
    "YEMP-WS2D.01_2013",
    "YEMP-WS3D.01_2013",
    "YEMP-WS4D.01_2013",
    "YEMP-WS1A.01_2013",
    "YEMP-WS2A.01_2013",
    "YEMP-WS3A.01_2013",
    "YEMP-WS4A.01_2013",
    "YEMP-WS1B.01_2013",
    "YEMP-WS2B.01_2013",
    "YEMP-WS3B.01_2013",
    "YEMP-WS4B.01_2013",
    "YEMP-WS1C.01_2013",
    "YEMP-WS2C.01_2013",
    "YEMP-WS3C.01_2013",
    "YEMP-WS4C.01_2013",
    "YEMP-101100.01_2013",
    "YEMP-101200.01_2013",
    "YMAR-652.01_2013",
    "YMAR-653.01_2013",
    "YEMP_INDCODE-2002.01_2013",
    "YEMP_OCCODE-2002.01_2013",
    "YEMP_MILFLAG.01_2013",
    "YEMP_SELFEMP.01_2013",
    "CV_CENSUS_REGION_2015",
    "CV_CHILD_BIRTH_DATE.01~Y_2015",
    "CV_CHILD_BIRTH_DATE.02~Y_2015",
    "CV_CHILD_BIRTH_DATE.03~Y_2015",
    "CV_CHILD_BIRTH_DATE.04~Y_2015",
    "CV_CHILD_BIRTH_DATE.05~Y_2015",
    "CV_CHILD_BIRTH_DATE.06~Y_2015",
    "CV_CHILD_BIRTH_DATE.07~Y_2015",
    "CV_CHILD_BIRTH_DATE.08~Y_2015",
    "CV_CHILD_BIRTH_DATE.09~Y_2015",
    "CV_CHILD_BIRTH_DATE.10~Y_2015",
    "CV_CHILD_BIRTH_DATE.11~Y_2015",
    "CV_CHILD_BIRTH_DATE.12~Y_2015",
    "CV_HGC_EVER_EDT_2015",
    "CV_HRS_PER_WEEK.01_2015",
    "CV_URBAN-RURAL_2015",
    "YEMP-WS1D.01_2015",
    "YEMP-WS2D.01_2015",
    "YEMP-WS3D.01_2015",
    "YEMP-WS4D.01_2015",
    "YEMP-WS1A.01_2015",
    "YEMP-WS2A.01_2015",
    "YEMP-WS3A.01_2015",
    "YEMP-WS4A.01_2015",
    "YEMP-WS1B.01_2015",
    "YEMP-WS2B.01_2015",
    "YEMP-WS3B.01_2015",
    "YEMP-WS4B.01_2015",
    "YEMP-WS1C.01_2015",
    "YEMP-WS2C.01_2015",
    "YEMP-WS3C.01_2015",
    "YEMP-WS4C.01_2015",
    "YEMP-101100.01_2015",
    "YEMP-101200.01_2015",
    "YMAR-652.01_2015",
    "YMAR-653.01_2015",
    "YSAQ-282C_2015",
    "YSAQ-282E_2015",
    "YSAQ-282G_2015",
    "YEMP_INDCODE-2002.01_2015",
    "YEMP_OCCODE-2002.01_2015",
    "YEMP_MILFLAG.01_2015",
    "YEMP_SELFEMP.01_2015",
    "YEMP_INDCODE-2002.01_2017",
    "YEMP_OCCODE-2002.01_2017",
    "CV_CENSUS_REGION_2017",
    "CV_CHILD_BIRTH_DATE.01~Y_2017",
    "CV_CHILD_BIRTH_DATE.02~Y_2017",
    "CV_CHILD_BIRTH_DATE.03~Y_2017",
    "CV_CHILD_BIRTH_DATE.04~Y_2017",
    "CV_CHILD_BIRTH_DATE.05~Y_2017",
    "CV_CHILD_BIRTH_DATE.06~Y_2017",
    "CV_CHILD_BIRTH_DATE.07~Y_2017",
    "CV_CHILD_BIRTH_DATE.08~Y_2017",
    "CV_CHILD_BIRTH_DATE.09~Y_2017",
    "CV_CHILD_BIRTH_DATE.10~Y_2017",
    "CV_CHILD_BIRTH_DATE.11~Y_2017",
    "CV_CHILD_BIRTH_DATE.12~Y_2017",
    "CV_HGC_EVER_EDT_2017",
    "CV_HRS_PER_WEEK.01_2017",
    "CV_URBAN-RURAL_2017",
    "YEMP-WS1D.01_2017",
    "YEMP-WS2D.01_2017",
    "YEMP-WS3D_REV.01_2017",
    "YEMP-WS4D.01_2017",
    "YEMP-WS1A.01_2017",
    "YEMP-WS2A.01_2017",
    "YEMP-WS3A_REV.01_2017",
    "YEMP-WS4A.01_2017",
    "YEMP-WS1B.01_2017",
    "YEMP-WS2B.01_2017",
    "YEMP-WS3B_REV.01_2017",
    "YEMP-WS4B.01_2017",
    "YEMP-WS1C.01_2017",
    "YEMP-WS2C.01_2017",
    "YEMP-WS3C_REV.01_2017",
    "YEMP-WS4C.01_2017",
    "YEMP-101100.01_2017",
    "YEMP-101200.01_2017",
    "YMAR-652_REV.01_2017",
    "YMAR-653.01_2017",
    "YHEA-SAQ-282C_2017",
    "YHEA-SAQ-282E_2017",
    "YHEA-SAQ-282G_2017",
    "YEMP_MILFLAG.01_2017",
    "YEMP_SELFEMP.01_2017")
  return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels. 
#categories <- vallabels(new_data)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
#new_data <- qnames(new_data)
#categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(new_data)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(new_data)
#summary(categories)

#************************************************************************************************************

