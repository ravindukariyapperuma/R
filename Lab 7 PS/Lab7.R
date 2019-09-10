#Q1
getwd()
setwd("C:\\Users\\IT18121766\\Desktop\\Lab 7 PS")

data<-read.table("Forest.txt", header = TRUE, sep = ",") #sep kiyanna data , akan ven venava kiyala
data
fix(data)

attach(data)
wind

#Q2
summary(data)
str(data)
#Q3
fix(data)
#Q4
max(wind)
min(wind)
#Q5
summary(temp)
#Q6
boxplot(wind, horizontal = TRUE, outline = TRUE,pch=8) #pch kiyanna outliers pennena format aka
#Q7
#negative
#Q8
median(temp)
#Q9
mean(wind) #mean value
sd(wind) #standard diviation
#Q10
IQR(wind)
#Q11 (ctrl + space = sujetion gaththahaki)
freq<-table(day,month)
freq
#Q12
mean(temp[month == "sep"])
#Q13
barplot(freq,beside = TRUE, xlab = "Month", ylab="Frequency", legend=rownames(freq))