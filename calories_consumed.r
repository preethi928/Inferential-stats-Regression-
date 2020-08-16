library(car)
library(MASS)
calories<-read.csv("C:\\Data_science\\EXCLER\\My Assignments\\LINEAR REGRESSION\\calories_consumed.csv")
View(calories)
colnames(calories)

#Plotting BOX plot
boxplot(calories$Weight.gained..grams.)
boxplot(calories$Calories.Consumed)

#Scatter plot to check the relationship between 2 variables
pairs(calories)

#Simple linear regression Model 
model<-lm(Calories.Consumed ~ Weight.gained..grams.,data = calories)
#Since the calories consumed is directly related to the weight gain 
#there fore considered Calories consumed as independent ie Y and weight gained as dependent
# that is x

#will check for the summary of the model 

summary(model)

# Hence we got R square : 0.882 which is a decent model to accept .

# Now lets give some calories consumed and predict for the weight gained.

cal<-data.frame(Weight.gained..grams.=c(700,1000,25000))
View(cal)

# Now lets predict for this model
predicted_weights<-predict(model,cal)
View(predicted_weights)

# I have predicted for entire data , and also for the some particular values 
# which is been prepared by me separately.