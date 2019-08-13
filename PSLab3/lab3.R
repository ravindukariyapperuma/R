#1. Identify the variables and import the given data set into R. 
getwd() #current working derectry
setwd("C:\\Users\\IT18121766\\Desktop\\PS") #change working derectry #option 1
setwd("C:/Users/IT18121766/Desktop/PS") #option 2
getwd()
data1<-read.csv("lab03.csv",header = TRUE) #head = true (with headers) #inport file
fix(data1) #Display Data Editor
#data1 #Display output in console
#data1<-read.csv("lab03.csv",header = FALSE) #head = FALSE (heders also added like data)
#fix(data1)

#X1 = Age of Student 
#X2 = Gender  1 = Male  2 = Female 
#X3 = Accommodation  1 = Stays at Home  2 = Boarded Students  3 = Lodging 

#                 x1     x2           x3
names(data1)<-c("Age","Gender","Accommodation")
fix(data1)
##Makeshuver close data Edditor

#data1$Age

data1$Gender<-factor(data1$Gender,c(1,2),c("Male","Female")) #1 venuvata Male akai 2 venuvata Female kiyalai assign karanava data1 aka
data1$Accommodation<-factor(data1$Accommodation,c(1,2,3),c("Stays at Home","Boarded Students","Lodging")) #change accomodation
attach(data1) #change karapu data attach karanava (rows godak change karapu hinda attach command aka danne), hariyatama atach venava meka gahapuvama
fix(data1)

#2 Analyse the data in a single variable at a time (univariate analysis)
gender.freq<-table(Gender) #gender.freq = frequency table name(you can use any name)
acc.freq<-table(Accommodation)
gender.freq #show frequency table
acc.freq #show frequency table
pie(gender.freq,main = "pi chart for gender") #"pi chart for gender" = title  of the pie chart
pie(acc.freq,main = "pi chart for gender")
barplot(gender.freq,main = "bar chart",ylab = "Frequency") #ylab kiyala denna Y axis aka nama
#uda aka X akshaya na dn X aka denna oni
abline(h=0)

barplot(acc.freq,main = "bar chart for Accommodation",ylab = "Frequency",col = "Blue")
abline(h=0)

#3. Describe gender and accommodation together (bivariate analysis).
#stach barchart
gender_acc.freq<-table(Gender,Accommodation)
gender_acc.freq
barplot(gender_acc.freq,main = "Gender and Accommodation")
abline(h=0)

barplot(gender_acc.freq,main = "Gender and Accommodation",legend=rownames(gender_acc.freq)) #show details of color in Male and Female
#clusted barchart
barplot(gender_acc.freq,beside=TRUE, main = "Gender and Accommodation",legend=rownames(gender_acc.freq)) 

#4. Describe age with gender/accommodation. 
#Boxplot
boxplot(Age~Gender,main="boxplot for age age by gender",xlab="Gender",ylab="Age")
#cheack outliers
boxplot(Age~Accommodation,outpch=8,main="boxplot for age by Accommodation",xlab="Accommodation",ylab="Age")
boxplot(Age~Accommodation,outpch=4,main="boxplot for age by Accommodation",xlab="Accommodation",ylab="Age") #outpch (no of lines drow for outliers)

#5. Find the mean age for all the combinations of gender and accommodation
xtabs(Age~Gender+Accommodation)/gender_acc.freq
