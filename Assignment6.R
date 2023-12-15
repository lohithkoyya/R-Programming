setwd("C:/Users/ICT/Documents/CS158/458")
#Name:Koyya Lohith Siva Venkata Ramakrishna
#The Main Purpose of the assignment: To learn how to visualize data.
#created on: APRil 09, 2023
#created by: KLSV Ramakrishna. 
#1
cars
bmp(filename = "cars.bmp")
plot(cars$speed, cars$dist,main = "speed and stopping distances for cars", xlab = "speed(miles per hours))", ylab = "Stopping distance (feet)", abline(lm(cars$dist~cars$speed)))
dev.off()
#2
Material <- c("Food scraps","Glass","Metals","Paper","Plastics","Textiles","Wood","Yard trimmings","Other","Total")
Weight <- c(25.9,12.8,18.0,86.7,24.7,15.8,12.7,27.7,7.5,231.9)
Percent <- c(11.2,5.5,7.8,37.4,10.7,6.8,5.5,11.9,3.2,100.0)
Garbagedata<-data.frame(Material,Weight,Percent)
Garbagedata <- Garbagedata[-10,]
pdf(file = "garbageweight.pdf",height = 5, width = 9)
barplot(Garbagedata$Weight, names.arg = Garbagedata$Material, col = rainbow(nrow(Garbagedata)), ylab = "Weight(million tons)")
dev.off()
#3
library(plotrix)
labels <-c("Food scraps 11.2%","Glass 5.5%","Metals 7.8%","Paper 37.4%","Plastics 10.7%","Textiles 6.8%","Wood 5.5%","Yard trimmings 11.9%","Other 3.2%")
pdf(file = "garbagepercent.pdf",height = 7, width = 8)
pie3D(Garbagedata$Percent,labels = labels)
dev.off()
#Problem-4:
tuitiondata <-read.delim("tuition.txt")
tuitiondata <- tuitiondata[,1]
pdf(file = "tuition.pdf",height = 5, width = 5)
hist(tuitiondata,main = "college Tuition",xlab = "Tuition and fees[$1000]",ylab = "Number of colleges",col = "pink")
dev.off()

#Problem-5:
workers <- read.delim("workers.txt")
pdf(file = "income.pdf",height = 7, width = 7)
boxplot(workers$income ~ workers$ed, names=c("Less than HS", "HS", "College", "Bachelor", "Advanced"),col="pink",main="Income distribution with five different education levels",ylab = "Income[thousand dollars]")
dev.off()
