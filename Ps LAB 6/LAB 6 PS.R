getwd() #get current working derectry
setwd("C:\\Users\\IT18121766\\Desktop\\Ps LAB 6") #set path to created folder
nicotine<-read.table("Data - Lab 6.txt",header = TRUE) #import txt file(dataset) ,nicotine= variyable name(can any name)
nicotine #display console
fix(nicotine) #display Data Editor
nicotine<-nicotine[[1]] #assign 1st column in nicotine veriable

#---- Q1 ----------
mean(nicotine) #get mean
var(nicotine) #get variance

#---- Q2 ----------
s<-sample(nicotine,5) #get size 5 sample #aka parak run karala aya run karahama vena sample 5k enna
s

samples<-c() #vector #samples is veriable name
n<-c() #vector for assingn column names


for(i in 1:30){  #get 30 remdom samples
  s<-sample(nicotine,5) # assign to s, 5 random variables
  samples<-cbind(samples,s) #cbind is used bind the value
  n<-c(n,paste('s',i)) 
}

colnames(samples)<-n #identify by column names
samples #retrive data from sample

#---- Q2 2nd part-------
s.means<-colMeans(samples)
s.means

s.vars<-apply(samples,2,var) #2 dammoth varians column by anna , 1 dammoth row wise enna
s.vars

#s.vars<-apply(samples,1,var)
#s.vars

#---- Q3 -----
mean(s.means)

var(s.vars)

#---- Q4 ----
mean(nicotine) #population mean
mean(s.means) #mean of the sample mean

#it is approximatly equal

#----- Q5 --------
var(nicotine) #population variance
var(s.vars) # variance of sample

#when the sample is incresing variance will be dicrise
