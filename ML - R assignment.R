#download a dataset
#http://www.principlesofeconometrics.com/excel.htm
#import dataset
voters <- read.csv("vote.csv")
View(voters)
#Identify some quantitative and categorical variables and print out descriptive statistics
for them
# quantitative variables - "vote", "income", "school", "urban", "northeast", 
# categorical variables  - "state"
# decriptive statistics for "income" 
mean(voters$income)
median(voters$income)
sd(voters$income)
max(voters$income)
min(voters$income)
#state with maximum income
voters[which.max(voters$income),]
#state with minimum income
voters[which.min(voters$income),]
#top 5 states based on income
order(voters$income)
voters[c(2,12,21,31,7),]
#Transform at least one variable. It doesn't matter what the transformation is.
# confirm class of variable - school
class(2)
#convert school from numeric to interger
as.integer(voters$school)

#Plot at least one quantitative variable, and one scatterplot
#install package "car"
install.packages("car")
library(car)
states <- table(voters$vote)
barplot(states, xlab = "vote", ylab = "states", col = "blue", main = "Votes for States")
# scatterplot using "school" and "urban"  
plot(voters$income, voters$school, xlab = "income", ylab = "school", main = "Voters income and School distribution")
