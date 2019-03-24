#Applying Linear Model 

#First we will read CSV file of Palm Beach Atlantic University(our objective file)
dfofPBA<-read.csv("D:/BSCS/5th Semes/Data_Mining/Dummy Data for Practice/palmBeachAtlantic.csv")
#Below command will show the above read CSV file into other tab in a tabular form
View(dfofPBA)
#Now plotting the scatter plot for find out realtions b/w variables
plot(dfofPBA)
#now applying linear model
#here lm command is representing linear model and return the parameters of linear equation that is B0,B1,B3...Bk
palmBeachLM <- lm(dfofPBA$Salary~dfofPBA$Evaluation+dfofPBA$Articles)
palmBeachLM
#find out summary 
summary(palmBeachLM)
#now after linear model applied  find out the residual and visulaize it through predicted value
#here fitted command fitt the linear model on the given dataset and residual command calculate the error
plot(fitted(palmBeachLM),resid(palmBeachLM))
#plotting Q-Q plots through qqnorm command
qqnorm(resid(palmBeachLM))

#THE-END


#this implementation of linear model is not in a good manner here there is no train and test dataset
