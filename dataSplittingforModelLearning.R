#Now building model for our prediction for this we first divide our data set into 2 parts(depend on data analyst for patition)
# here we splitting the data into 2 parts 1st for model buildig purpose 2nd for testing model on it
#Splitting data
#below method will split our data set into 2 parts and set status value 1 and 2 for 1st part and 2nd part respectively
sample_data <-sample(2,nrow(df.cleanNa4),replace = TRUE,prob = c(0.8,0.2))
#Now assign 1st and 2nd part of splitt data into train_data and test_data variable
train_data <-df.cleanNa4[sample_data ==1,]
test_data <-df.cleanNa4[sample_data ==2,]
#Read 1st 6th rows of both parts
head(train_data)
head(test_data)