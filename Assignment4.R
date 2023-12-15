#1
#Purpose of the assignment:To practice with if- statements, for, while- loops and functions
#Created by: KOYYA LOHITH SIVA VENKATA RAMAKRISHNA 
#Created On:02/27/2023.

#2
# Calculate the sum from 1 to 100.
# for-loop
#a)
for (i in 1:100) 
  {sum <- sum + i}
print(sum)
#b)
i <- 1
sum <- 0
while(i <= 100) {
  sum <- sum + i
  i <- i + 1 }
print(sum)
#3
#A)
bmidata <- read.delim("~/CS158/458/bmidata.txt")
   View(bmidata)
#B)
BMI = c()
#C)
weights <- bmidata[,1]
heights <- bmidata[,2]
for (i in 1:length(weights)) {
  BMI <- (weights/(heights*heights))*703}

#D)
status <- c()
#e)
for (i in 1:length(BMI)) {
  if (BMI[i] < 18.5) {
    status[i] <- "underweight"} else if (18.5 <= BMI[i] && BMI[i] < 25) {
    status[i] <- "normal"} else if (25 <= BMI[i] && BMI[i] < 30 ) {
    status[i] <- "overweight"} else if (BMI[i] >= 30 ) {
    status[i] <- "obese"}}
#f)
bmidata<- cbind(data,BMI,status)
#g)
write.table(bmidata,"bmi_results.txt",row.names = T, quote = F, sep = "\t")
#4)
vector.info <- function(x) {
  min_val <- min(x)
  max_val <- max(x)
  mean_val <- mean(x)
  output <- list(min_val,max_val,mean_val)
  return(output)
}


#extra credit


#a)
#it will shows the incorrect answer when the factorial is 1 




#b)
factorial<- function(n){
  fact <- 1
  for (k in 1:n) {
    fact <- fact*k}
  
  return (fact)}
print (factorial(1))





