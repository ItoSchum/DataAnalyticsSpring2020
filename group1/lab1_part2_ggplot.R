library(ggplot2)
library(dplyr)
setwd('/Users/itoshen/Documents/Develope/RPI/DataAnalytics/DataAnalyticsSpring2020/group1')
multivariate <- read.csv('./csv/multivariate.csv')
attach(multivariate)
mm <- lm(Homeowners ~ Immigrant)
mm

summary(mm)$coef
plot(Homeowners ~ Immigrant)
abline(mm)
abline(mm, col = 2, lwd = 3)

newImmigrantdata <- data.frame(Immigrant = c(0, 20) )
newImmigrantdata
mm %>% predict(newImmigrantdata)
attributes(mm)
mm$coefficients

abline(mm)
abline(mm, col = 3, lwd = 3)
attributes(mm)

# Creating Plots
# Chapter 2 -- R Graphics Cookbook
plot(mtcars$wt, mtcars$mpg)

qplot(mtcars$wt, mtcars$mpg)
qplot(wt, mpg, data = mtcars)
ggplot(mtcars, aes(x = wt, y = mpg) ) + geom_point()
plot(pressure$temperature, pressure$pressure, type = "l")
points(pressure$temperature, pressure$pressure)

lines(pressure$temperature, pressure$pressure/2, col = "red")
points(pressure$temperature, pressure$pressure/2, col = "blue")

qplot(pressure$temperature, pressure$pressure/2, geom = "line")
qplot(temperature, pressure, data = pressure, geom = "line")
ggplot(pressure, aes(x = temperature, y = pressure)) + geom_line() + geom_point()


# Creating Bar Graphs
barplot(BOD$demand, names.arg = BOD$Time)
table(mtcars$cyl)
barplot(table(mtcars$cyl))
qplot(mtcars$cyl)
qplot(factor(mtcars$cyl))
# Bar graph of counts
qplot(factor(cyl), data = mtcars)
ggplot(mtcars, aes(x = factor(cyl))) + geom_bar()

# Creating HIstograms
# View the distribution of one-dimentional data with a histogram
hist(mtcars$mpg)
hist(mtcars$mpg, breaks = 10)
hist(mtcars$mpg, breaks = 5)
hist(mtcars$mpg, breaks = 12)
qplot(mpg, data = mtcars, binwidth = 4)
ggplot(mtcars, aes(x = mpg)) + geom_histogram(binwidth = 4)
ggplot(mtcars, aes(x = mpg)) + geom_histogram(binwidth = 5)

# Creating Box-plots
plot(ToothGrowth$supp, ToothGrowth$len)
#Formula Syntax
boxplot(len ~ supp, data = ToothGrowth)
# put interaction of two variables on x-axis
boxplot(len ~ supp + dose, data = ToothGrowth)
# with ggpolot2 you can get the same results above
qplot(ToothGrowth$supp, ToothGrowth$len, geom = "boxplot")
# if the two vectors are in the same dataframe, you can use the folling syntax
qplot(supp, len, data = ToothGrowth, geom = "boxplot")
# in ggplot2, the above is equivalent to:
ggplot(ToothGrowth, aes(x = supp, y = len)) + game_boxplot()
# Using three seperate vectors
qplot(interaction(ToothGrowth, ToothGrowth$dose),  ToothGrowth$len, geom = "boxplot")
# You can write the same thing above, get the columns from the dataframe
qplot(interaction(supp, dose), len, data = ToothGrowth, geom = "boxplot")
# Using ggplot() you can do the sametinng and it is equivalent to:
ggplot(ToothGrowth, aes(x = interaction(supp, dose), y = len)) + geom_boxplot()
#Plotting a function curve

#