#1
#Purpose of the assignment:To get familiar with reading, writing files and package installation.
#Created by: KOYYA LOHITH SIVA VENKATA RAMAKRISHNA 
#Created On:02/13/2023
#2
setwd("C:/Users/ICT/Downloads")
#3
unemployed.men <- read.table("unemployment_men.txt",header = T,check.names = F)
#4
nrow(unemployed.men)
ncol(unemployed.men)
#5
total <- colSums(unemployed.men)
total
#6
unemployed.men <- rbind(unemployed.men, total)
unemployed.men
#7
status<- c("Married, spouse present","Widowed, divorced, or separated","Never married","Totals")
#8
maritalmodified <- cbind(status,unemployed.men)
maritalmodified
#9
write.table(maritalmodified,"unemployed_men_modified.txt",row.names = F, quote = F, sep = "\t")
#10
unemployed.women <- read.table("unemployment_women.txt",header = T,check.names = F)
nrow(unemployed.women)
ncol(unemployed.women)
total <- colSums(unemployed.women)
unemployed.women <- rbind(unemployed.women, total)
maritalmodified <- cbind(status,unemployed.women)
write.table(maritalmodified,"unemployed_women_modified.txt",row.names = F, quote = F, sep = "\t")
#11
install.packages("Ckmeans.1d.dp")
library("Ckmeans.1d.dp")
#12
num<-runif(20,9,12)
#13
partitionvector<-Ckmeans.1d.dp(num,4)
partitionvector
#14
which(partitionvector$cluster== 1)
which(partitionvector$cluster== 2)
which(partitionvector$cluster== 3)
which(partitionvector$cluster== 4)