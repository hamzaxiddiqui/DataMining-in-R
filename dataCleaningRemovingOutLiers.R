#Removing outliers from the data
str(df.cleanNA2)
#create boxplot of df.cleanNA2 variable Temp
boxplot(df.cleanNA2$Temp,horizontal = TRUE)
#create boxplot of df.cleanNA2 variable wind
boxplot(df.cleanNA2$Wind,horizontal = TRUE) #3 outlier present in this variable
#it shows the 6th point summary Min,1stQuartile,Median,Mean,3rd Quartile,Maxima 
summary(df.cleanNA2$Wind)
#below quantile method pick the 1st Quartile value ,as summary method shows above here 0.25 shows 25% i.e 1stQuat start
Q1=quantile(df.cleanNA2$Wind,0.25)
#below quantile method pick the 3rd Quartile value ,as summary method shows above here 0.75 shows 75% i.e 3rdQuat start
Q3=quantile(df.cleanNA2$Wind,0.75)
#here calculate IQR i.e Inter Quartile Relation
IQR_wind=Q3-Q1
#this is the direct method to calculate IQR
IQR(df.cleanNA2$Wind)
#calculate 
uppFence <-Q3+1.5*IQR_wind
