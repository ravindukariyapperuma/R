#Lab 1
5+3
6-4
5*7
2^2
#modulas
2**2
5%%2
#potion
5%/%2
#logical operators
5<6
5<=6
5==5
5>6
5.66==5.66
isTRUE(TRUE) 
isTRUE(FALSE)
isTRUE(5<6)
isTRUE(2>5)
#create variables
v=5
v1<-5
v2<<-5
v
v1
v2

x<-1:10
x
X
x<5
x[x<5]
x[x<9|x>5] 
x[x<9&x>5]
#vectors
v1<-c(1,2,3,4)
v1
v2<-c("Anne","Amal","Nimal")
v2
v3<-c(TRUE,FALSE,TRUE,TRUE)
v3
v4<-c(T,F,T,T)
v4
class(v3)
class(v2)
v5<-c(1,2,3,4)
v5+2
v5<-c(1,50,34,80,77,25)
v5+2
v5>30
v5[v5>30]
x<-v5[v5>30]
x
v5[3]
v5[-3]
sort(v5)

seq(5:10)
seq(5,10)
seq(1,15,by=2)

rep(5,3)
rep(1:3,4)
rep(1:3,1:3)
rep(1:3,1:4)
rep(1:3,c(1,5,3))

#Factor
f<-c("m","f","f","m","s")
f
factor(f)

l<-list(name="A",age="23",marks<-c(70,75,80))
l

l["name"]
l[["name"]]
l$name

#matrix
m<-matrix(1:20,nrow = 5,ncol = 4)
m

m1<-matrix(1:20,nrow = 5,ncol = 4,byrow = TRUE)
m1

length(m1)
dim(m1)

v<-c(12,25,76,4,3,2)
m2<-matrix(v,nrow = 3,ncol = 2)
m2

m2[2,2]
m2[1,]
m2[,2]

#data frame
df<-data.frame(name=c("a","b","c"),gender=factor(c("m","f","f")),ht=c(1.5,1.6,1.9),age=(c(25,30,23)))
df

df["gender"]
df[2]
df[[2]]