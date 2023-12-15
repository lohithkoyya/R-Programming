#Name: Lohith Siva Venkata Ramakrishna koyya
#Purpose of the Project: To get Report the overall mean count of norm_conc at each corresponding
#timepoint for all the Subjects in given data and to see the distribution of normalized concentration at corresponding timepoints,
#i.e., we will take the mean of the normalized concentration of all subjects recorded at the
#first time point (this will become our first value), then the mean of the normalized
#concentration of all subjects recorded at the second time point (this will become our
                                                                 #second value) and so on

                    #Determine the relationship between subject weight (Wt) and dose (Dose).
#Create a table in R that captures the following details

#created on: April 03 2023.
#created by : Koyya Lohith Siva Venkata Ramakrishna 

# install.packages("randomcoloR")
# install.packages
# install.packages("dplyr")


library(datasets)
library(randomcoloR)
library(dplyr)
 
#Following Datasets 
Theoph

#Q1

#a) How many unique 'Subjects' are there in the data-frame?
unique(Theoph$Subject)
length(unique(Theoph$Subject))

#b)What is the number of total records (rows)?
n_row <- nrow(Theoph)

#c)How many records per 'Subject'?
table(Theoph$Subject)

#d)List the unique weights ('Wt') in the data-frame.
unique(Theoph$Wt)

#e)List the unique dosage ('Dose') in the data-frame.
unique(Theoph$Dose)

#Q2 Bind the normalized concentration (as norm_conc) into the data-frame Theoph.
norm_conc <- ((mean(unique(Theoph$Dose)))/Theoph$Dose)*Theoph$conc
ramTheoph<-cbind(Theoph, norm_conc)

#Q3 
one <-seq(from = 1, to = 132, by = 11)
two <-seq(from = 2, to = 132, by = 11)
three <-seq(from = 3, to = 132, by = 11)
four <-seq(from = 4, to = 132, by = 11)
five <-seq(from = 5, to = 132, by = 11)
six <-seq(from = 6, to = 132, by = 11)
seven <-seq(from = 7, to = 132, by = 11)
eight <-seq(from = 8, to = 132, by = 11)
nine <-seq(from = 9, to = 132, by = 11)
ten <-seq(from = 10, to = 132, by = 11)
eleven <-seq(from = 11, to = 132, by = 11)

n_means <- seq(from=1, to=11,by=1)
MTP = rep()

for (i in n_means) {
  n_mean <- mean(newTheoph$norm_conc[seq(from = i, to = 132, by = 11)])
  MTP <- c(MTP,n_mean)
}


PlotBarPlot <- function (x= c(1:11), MTP,type= "mean")
{
  n <- length(c(1:11))
  palette <- distinctColorPalette(n)
  barplot(height = MTP, width = 3, space = 1, names.arg = c(1:11),
          col = palette, axes = TRUE, main = paste("distribution of dose conc. using ", type= "mean",
                                                   sep = ""), xlab = "Timpoints", ylab = "Dose conc.")
}


PlotBarPlot(x= c(1:11), MTP, type= "mean")
pdf("ramlot2.pdf")

#dev.off()

#Q4)Determine the relationship between subject weight (Wt) and dose (Dose).
#Create a table in R that captures the following details
RAM =  mean(filter(ramTheoph,Wt <=55)$Dose)
RAM55 = mean(filter(ramTheoph,Wt >55& Wt <=65)$Dose)
RAM65 = mean(filter(ramTheoph,Wt >65& Wt <=75)$Dose)
RAM75 = mean(filter(ramTheoph,Wt >75)$Dose)
mean <- c(RAM,RAM55,RAM65,RAM75)
weightr <- c('<=55','<55 and <=65','>65 and <=75','>75')
finaltable = data.frame(weightr,mean)
colnames(finaltable) <- c('Weight range','  Mean of dose')
finaltable
