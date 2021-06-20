#=========================================================================

#COLD STORAGE CASE STUDY

#Problem 1

#We have the following assumptions before starting the study of the population:

#The temperature has been collected for complete one year when the plant maintenance was outsourced. So, we are assuming the procedures has been stabilized
#The temperature values recorded has no influence on the outside temperature as the outside temperature could vary over a period of 12 months.

#=========================================================================
#set working directory
setwd("Mention Your working Directory")

#Library
library(tidyverse)
library(ggplot2)

#Import Data
my_data<- read.csv("Cold_Storage_Temperature_Data.csv", header=TRUE)

#Exploratory analysis
str(my_data)
summary(my_data)
tail(my_data,3)
head(my_data,3)
attach(my_data)
######### What we observed:
#Dataset has records for 12 months and these months have been grouped and categorised in 3 groups as Rainy, Summer and Winter.
#Summary has the minimum temperature as 1 Degree Celsius and maximum temperature as 5 Degree Celsius


#Univariate analysis

boxplot(my_data[3:4],main='BoxPlot')
hist(Temperature,main='Cold Storage Temperature Histogram',xlab = "Temperature",
     ylab = "Frequency")
table(Season)
table(Month)
boxplot(Temperature  ~ Season , main="Cold Storage Temperature across Season")
boxplot(Temperature~Month,main="Month wise Temperature",xlab = "Month",ylab="Temperature")


# Missing Value Identification
sapply(my_data, function(x) sum(is.na(x)))

                       
#1. Find mean cold storage temperature for Summer, Winter and Rainy Season
mean_by_season <- my_data %>% group_by(Season) %>% summarise(Mean=mean(Temperature)) 
mean_by_season
ggplot(mean_by_season,aes(x=Season,y=Mean))+geom_col()

#2. Find overall mean for the full year 
mean_full_year_temp <- mean(Temperature)
mean_full_year_temp 

#3. Find Standard Deviation for the full year
sd_temp <- sd(Temperature)
sd_temp

#4. Assume Normal distribution, what is the probability of temperature having fallen below 2 C?
prob_less_2<- pnorm(2,mean_full_year_temp,sd_temp,lower.tail = TRUE)
prob_less_2

#5. Assume Normal distribution, what is the probability of temperature having gone above 4 C? 
prob_greater_4<-pnorm(4,mean_full_year_temp,sd_temp,lower.tail=FALSE)
prob_greater_4

#6. What will be the penalty for the AMC Company? 
Total_Probability <- prob_greater_4+prob_less_2 
Total_Probability

if(Total_Probability>0.025 && Total_Probability <= 0.05) { penalty <- '10%'
}else if(Total_Probability >0.05){
  penalty <- '25%'
}else
  penalty <- '0%' 

penalty

###########################################################################
#Problem 2: Cold_Storage_March

#We have the following assumptions before starting the study of the sample
#a)	The sample collection is random and not biased in nature
#b)	The sample is not affected by outside temperature 

############################################################################

#Upload data set
cold_mar_data = read.csv("Cold_Storage_March.csv", header = TRUE)

dim(cold_mar_data)

str(cold_mar_data)
summary(cold_mar_data)

attach(cold_mar_data)

par(mfrow=c(1,2))

hist(Temperature,main='Cold Storage March Temperature Histogram',xlab = "Temperature", 
     ylab = "Frequency",col = "turquoise")

boxplot(Temperature,main='Cold Storage March Temperature Box Plot',xlab = "Temperature", 
        ylab = "Frequency",col = "turquoise1",horizontal = TRUE)

dev.off() 

mean <- mean(Temperature)
mean
mu = 3.9
n=35

# Using Z Test:
#   • Null Hypothesis: Temperature is maintained below 3.90c and
# hence no corrective action is required.
# H0: Temperature <= 3.90c
# • Alternate Hypothesis: Temperature is above 3.90c and hence
# corrective action in the Cold Storage Plant is required.
# Ha: Temperature > 3.90c


#Z Score
z <- (mean - mu)/(sd_temp/(sqrt(n)))
z

pValue = pnorm(z,lower.tail = FALSE)
pValue


#############################################################################
# t -test
#############################################################################

t.test(Temperature, mu
       = mu,
       alternative = "greater",
       conf.level = .9)
