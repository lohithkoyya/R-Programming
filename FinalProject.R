setwd("C:/Users/ICT/Documents/CS158/458")
###### Name:Koyya Lohith Siva Venkata Ramakrishna.
###### Purpose of the Assignment: Final Project of R programming language which includes to get familiar with the Correlation method measures.
###### and generate the scatter plot , pearson Chi square test, use CK means package to discretize to the data, create a Box plot for the given data.
###### created on:04-29-2023
###### created by: KLSV Ramakrishna.



#### Load the data sets.

library(Ckmeans.1d.dp)
library(ggplot2)
library(datasets)
data("iris")
iris

#1)

#a) How many unique ‘Species’ are there in the data-frame?
unique(iris$Species)
length( unique(iris$Species))


#b) What is the total number of records (total rows)?
  nrow(iris)
  
#c) How many records per ‘Species’(number of rows per species)?
  table(iris$Species)
  
#d) How many attributes in the data set?
  attributes(iris)
  
  
#e) Provide a summary (min, mean, max, median) of the first four attributes.
  summary(iris[, 1:4])
  
#####2)  
#a) Find the relationship between Petal.Length and Petal.Width
cor(iris$Petal.Length,iris$Petal.Width,method = "pearson")

#b) Find the relationship between Sepal.Length and Sepal.Width.
cor(iris$Sepal.Length,iris$Sepal.Width, method = "pearson")


######3)


#1) Create a scatter plot using ggplot and Use appropriate x and y labels and suitable heading for your plot
ggplot(data = iris, aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
  geom_point() +
  labs(x = "Sepal Width", y = "Sepal Length",
       title = "Scatter Plot of Sepal Length vs Sepal Width") +
  theme_bw()

# Save the plot as a PDF file
ggsave(output_file)

output_file <- "AssoSepal.pdf"

#2) Create a scatter plot using ggplot
ggplot(data = iris, aes(x = Petal.Width, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(x = "Petal Width", y = "Petal Length",
       title = "Scatter Plot of Petal Length vs Petal Width") +
  theme_bw()

# Save the plot as a PDF file
ggsave(output_file)
output_file <- "AssoPetal.pdf"


### Discretize Petal.Width into 2 bins using k-means clustering
k <- 2
X <- Ckmeans.1d.dp(iris$Petal.Width, k)$cluster
Y <- iris$Species
contingency_table <- table(X,Y)

chisq.test(contingency_table)

## As we know, if the p-value is less than the significance level (<0.05), 
## we can conclude that there is a statistically significant relationship between the quantities
## Here - Petal.Width and Species.

##5)Create a boxplot names ChiPetal.pdf between Petal.Width and Species 
ggplot(iris, aes(x = Species, y = Petal.Width)) +
  geom_boxplot() +
  labs(x = "Species", y = "Petal Width") +
  ggtitle("Boxplot of Petal Width by Species")

# save as PDF file
ggsave("ChiPetal.pdf")
