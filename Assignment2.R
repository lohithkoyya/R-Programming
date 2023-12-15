######## Ram Assignment2.R #########

setwd("C:/Users/ICT/Documents/Ram - Assignment2.R")
#Name:Lohith siva venkata Ramakrishna
#Purpose of the assignment: To get familiar with data structures and vectorization in R
#created on: Feb 06, 2023
#2. Calculate the following expressions.
#(a)
i = c(1:100)
summation = sum((i^3)+(4*(i^2)))
summation

#(b)
i=c(1:25)
summation = sum(((2^i)/i)+(3^i)/i^2)
summation



#(b)
x <- rep("fn", each=30)
y <- paste(x,1:30, sep = "")
y

#4
strategy <- c("conservative","conservative","conservative","conservative","moderate","moderate","moderate","moderate","aggressive","aggressive","aggressive","aggressive")
region <- c("desert","mountain","forest","grassland","desert","mountain","forest","grassland","desert","mountain","forest","grassland")
dat <- data.frame(strategy,region)
dat
result <- runif(n=nrow(dat),min = 1, max = 10)
dat<-cbind(dat,result)
dat


#5
q5<- dat[dat$result >mean(dat$result) & dat$region!="grassland",]
q5

#6
dat<-dat[order(dat$result),]
dat

#7
dat$result[dat$region == "desert"] <- "NA"
dat

#Extracredit
mat1 = rbind(c(1,2,3,4,5),
             + c(2,1,2,3,4),
             + c(3,2,1,2,3),
             + c(4,3,2,1,2),
             + c(5,4,3,2,1))
mat2=rbind(7,-1,-3,5,17)
sol=solve(mat1,mat2)
sol

########End#############
#######################
   ######  ######  ######
