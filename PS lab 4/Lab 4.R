#LAB 4
#Q1
Attendence<-scan() #First run the this command then select all data column in werd document and copy it and past console then press enter 
Salary<-scan() #then same do
Years<-scan() #then same da

data<-data.frame(Attendence,Salary,Years) #creae data frame
data #Display Console
fix(data) #Print Data Editer

#Q2
data$Attendence #display value of Attendence
#Q2a
#Boxplot
boxplot(Attendence,main="Boxplot for Attendence",ylab="Attendence",horizontal = TRUE)
boxplot(Salary,main="Boxplot for Salary",ylab="Salary",horizontal = TRUE)
boxplot(Years,main="Boxplot for Years",ylab="Years",horizontal = TRUE)

#Histogram
hist(Attendence,main="Histogram for Attendence",ylab = "Frequency")
hist(Salary,main="Histogram for Salary",ylab="Frequency")
hist(Years,main="Histogram for Years",ylab="Frequency")

#Stem-Leaf Plot
stem(Attendence)
stem(Salary)
stem(Years)

#b
summary(data) #data = dataframe name #5number summery

sapply(data,sd) #get standed deviation for all column in dataframe

sd(Attendence) #get standed deviation of Attendence column

mean(Attendence) #get mean for Attendence column
mean(Salary)
mean(Years)

#c
quantile(Years) #quantile for years column (Q1,Q2,Q3)

#d
IQR(Years) # interquantile (IQR = Q3-Q1)

sapply(data,IQR) #get interquantile value for each and every column

#Q3
table(Years) #Frequency table (output first line display values, secound line display frequency)

#function
get.mode<-function(x){
  counts<-table(x) #x = frequncy table 
  names(counts[counts == max(counts)])
}

get.mode(Years)

#Q4

#function
find.outliers<-function(x){
  q1<-quantile(x)[2]
  q3<-quantile(x)[4]
  
  iqr<-q3-q1
  
  ub<-q3+1.5*iqr
  lb<-q1-1.5*iqr
  
  print(paste("upper Bound= ",ub))
  print(paste("Lower Bound= ",lb))
  
  print(paste("outliers: ",paste(sort(x[x<lb | x>ub]),collapse = ",")))
}

find.outliers(Years)





#To import txt file
data1<-read.table("Students.txt",header = TRUE,sep=",")




#Exporting data frames
height<-c(12,23,56)
weight<-c(45,78,89)

sheep<-data.frame(height,weight)
fix(sheep)

#export file as csv
write.csv(sheep,file = "sheepNew.csv")

#export file as txt
write.table(sheep,file = "sheeptab1.txt")

getwd()