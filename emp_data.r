churn_data<-read.csv("C:\\Data_science\\EXCLER\\My Assignments\\LINEAR REGRESSION\\emp_data.csv")
View(churn_data)

#plotting

boxplot(churn_data$Salary_hike)
boxplot(churn_data$Churn_out_rate)

#scatter plot
plot(churn_data)
# according to the plot the variables are in negative relationship 
# as the hike decreases the churn rate increases

#corrolation
pairs(churn_data)

#its same has the scatter plot result .

# both salary and churn rate are in negative corrolation.

#lets check NA values

is.na(churn_data)
sum(is.na(churn_data))
#there are zero NA values.

# lets try transforming data 
#1.arrange

arrange(churn_data)

#2.lets use select

select(churn_data,Salary_hike)

select(churn_data,Salary_hike,-Churn_out_rate)
#both of them does the same function.
#3.lets apply business filters

filter(churn_data,Salary_hike > 1500)

filter(churn_data,Salary_hike>1000 & Churn_out_rate>50)
#Building a simple linear model.
colnames(churn_data)

model<-lm( Churn_out_rate ~ Salary_hike, data = churn_data)

#summary of the model to check for the r squared value.

summary(model)

# the r squared value : 0.8101 therefore the obtained value says that the model is decent
#model.

#lets predict for the sample salary hike data.

sample_salary_hike<-data.frame(Salary_hike = c(1880,1901,1920,1000))


#predict for the sample data.
churn_rate_predict<-predict(model,sample_salary_hike)

View(churn_rate_predict)
