############
####Code: Ram ####
#### Assignment1.R ####
##### Author: Ram ####

# creating myvector
myVector <- rnorm(100) 

#minimum value of Myvector
min(myVector)

#maximum value of myvector
max(myVector)

#mean value of myvector
mean(myVector)

#creating odd numbers
oddnum <- seq(from=1, to=99,by =2) 
oddnum

# myvector in reverse order
rev(myVector) 

#Extracting positve number
pmyVector<- myVector[myVector>0] 
pmyVector


#number of positive 
length(pmyVector) 
HeightsCm <- c(143, 140, 143, 155, 156, 158, 155)

#heights in decreasing order.
sort(HeightsCm, decreasing = TRUE)


#how many heights were recorded. 
length(HeightsCm) 

#unique measurements of heights.
sort(unique(HeightsCm))

# indices where the height is 155
which(HeightsCm==155)

######End######
##############
#############.