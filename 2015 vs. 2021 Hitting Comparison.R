library(readr)
Stats2015 <- read.csv("2015 DATA.csv")
Stats2021 <- read.csv("2021 DATA.csv")

Stat_Comparison<- matrix(0:0, ncol = 2, nrow= 4)
colnames(Stat_Comparison)<- c("2015", "2021")
rownames(Stat_Comparison)<- c("Avg. Groundball Percentage","Avg. Linedrive Percentage","Avg. Flyball Percentage","Avg. Popup Percentage")

Stat_Comparison[1,1]=mean(Stats2015$groundballs_percent)
Stat_Comparison[1,2]=mean(Stats2021$groundballs_percent)

Stat_Comparison[2,1]=mean(Stats2015$linedrives_percent)
Stat_Comparison[2,2]=mean(Stats2021$linedrives_percent)

Stat_Comparison[3,1]=mean(Stats2015$flyballs_percent)
Stat_Comparison[3,2]=mean(Stats2021$flyballs_percent)

Stat_Comparison[4,1]=mean(Stats2015$popups_percent)
Stat_Comparison[4,2]=mean(Stats2021$popups_percent)

print(Stat_Comparison)
