#Lab 5
getwd() #cheack path
setwd("C:\\Users\\IT18121766\\Desktop\\PS LAB 5") #set path

#read data from the Data.txt file
data<-read.table("Data.txt",header = TRUE, sep = ",")
fix(data) #display data editer

#rename data headers as x1 and x2
names(data)<-c("x1","x2")
attach(data)
fix(data)

#part 01 - Histogram
hist(x2,main = "Histogram for Number of shareholders")

#part 02
histogram<-hist(x2,main = "Histogram for Number of shareholders", breaks = seq(130, 270, length = 8))

##########################
breaks <- round(histogram$breaks) #$breaks fo Histogram (starting points) #This use "histogram" variable diclayar in part 02
breaks

freq <- histogram$counts #get the freqency of Histogram
freq

mids <- histogram$mids #mid points of class in Histogram
mids
###########################

classes <- c()
for(i in 1:length(breaks)-1){ #length(breaks) = 8
  classes[i]<-paste0("[",breaks[i], "," ,breaks[i+1], ")") # first round i=1 
}

#column bind - can do used to combine two data frames with the frequency
cbind(classes = classes, frequency = freq)


#part 04

#add frequency polygon to the same plot.
lines(mids,freq)

#Draw frequency polygon in a new plot.(type=p for points)
plot(mids, freq, type = 'l', main = "Frequency",xlab ="shareholers",ylab="Frequency",ylim = c(0,max(freq))) #have 3 types l-line, p- points, b - both lines & points

#part 05
cum.freq <- cumsum(freq)
new<-c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  }else{
    new[i]=cum.freq[i-1]
  }
}

plot(breaks, new, type = "l", main = "Frequency polygon for shareholders", xlab = "shareholders", ylab = "cumulative Frequency",ylim = c(0,max(cum.freq)))
cbind(upper = breaks, cumFreq = new)

