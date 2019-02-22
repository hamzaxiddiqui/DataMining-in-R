#Now check duplicates present in dataset
any(duplicated(df.cleanNa4)) #no duplicates is present
#we create duplicate for self understanding to handle and clean duplicates 
df.cleanNa4[145,]<-df.cleanNa4[130,] 
df.cleanNa4[146,]<- df.cleanNa4[136,]
str(df.cleanNa4)
df.cleanNa4[c(130,145),]
#now check for duplicates
df.cleanNa4[duplicated(df.cleanNa4),] #shows two duplicate row i.e 145 and 146 of 130 and 136 respectively
#below unique method delete duplicate row/value
df.cleanNa4<-unique(df.cleanNa4)
#----The End----
