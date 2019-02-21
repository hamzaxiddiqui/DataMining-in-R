#Store Not available value data in DF,airquality data set is a by default data set of R 
df<-airquality
str(df)
#there are two missing cases 1.NA(Not Available),2.NaN(Not a Number)
#show whole data set with true and false,value is true when there is NA is Found otherwise False;
is.na(df)
#shows the sum of no. of NA values with respect to column 
colSums(is.na(df))
#calculate sum of on of NA present in specific column
sum(is.na(df$Ozone))
#omits all NA present in data set
df.cleanNa<-na.omit(df)
#shows no. of rows
nrow(df.cleanNa)
#assign columns of NA in which NA is less than 10
df.cleanNA2<- df[,colSums(is.na(df))<10]
#mean and median can not be count if there is NA value is present it will return NA 
#calculate mean of the given column except NA 
mean(!is.na(df$Solar.R))
#calculate median of the given column except NA
median(!is.na(df$Solar.R))
#replace/fill NA value by taking mean value
df$Solar.R[is.na(df$Solar.R)]<-mean(!is.na(df$Solar.R))
#replace/fill NA value by taking median value
df$Solar.R[is.na(df$Solar.R)]<-median(!is.na(df$Solar.R))
#now checking is there any NA is still present after fill by mean/median value
any(is.na(df$Solar.R))
