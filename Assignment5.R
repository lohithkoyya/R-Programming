#1
setwd("C:/Users/ICT/Documents/Ram")
# Purpose of the assignment:to practice with implicit loops and NA handling in geneExpression.
# Created by: Koyya Lohith Siva Venkata RAmakrishna
# Created on: 03-08-2023
#2
two<-sapply(2:100,function(i) 1/((i-1)*i))
sum(two)
#3
third <-sample(1:100, 10 , replace = F)
#a)
aList<-lapply(1:10, function(i) sample(1:100, i))
aList
#b)
lastEle <- sapply(aList, tail, n=1)
lastEle
#4
geneExpression <- read.delim("geneExpression.txt")
#a)
tapply(geneExpression$MEST,geneExpression$Genotype,mean)
#b)
meanExpression<-sapply(geneExpression[, -1], function(uniq) tapply(uniq, geneExpression$Genotype, mean))
#c)
write.table(meanExpression,"meanExpression.txt")
#5
#a)    
for (k in 1:length(geneExpression)) {
  if (is.numeric(geneExpression[[k]])) {
    geneExpression[sample(1:12, 1), k] <- NA
  }
}
geneExpression
geneExpression <- read.delim("geneExpression.txt")
#b
sapply(geneExpression[, -1], function(uniq) tapply(uniq, geneExpression$Genotype, mean, na.rm = TRUE))