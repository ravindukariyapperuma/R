#Get the keybord input from the user (run line by line)
my.name<-readline(prompt="Enter number : ")
my.age<-readline(prompt="Enter age")

#cnvert character into integer
my.age<-as.integer(my.age)
print(paste("Hi,",my.name,"next year you will be",my.age+1,"years old."))

#Ex04
my.age<-as.integer(readline(prompt = "Enter your age"))
if(my.age<18)
{
  print("you are not a Major")
  print("you are not eligible to work")
}else{
  if(my.age>=18 & my.age<=60)
  {
    print("you are eligible to work")
    print("please fill the application")
  }else{
    print("as per government rules you are too old to work")
    print("please collect your pension!")
  }
}

#for loops
for(i in 1:15)
{
  print(i)
}

for(i in 5:15)
{
  print(i)
}

#create a new charactor vector
student<-c("Ann","steave","kyle","John")

for(i in 1:4)#display the veriable inside the
{
  print(student[i])
}

for(i in 1:3)#display the veriable inside the
{
  print(student[i])
}

for(i in 1:6)#display the veriable inside the
{
  print(student[i])
}

#while loops
i<-1

while(i<10){
  print(i)
  i<-i+1
}

##
i<-1

while(i<=10){
  print(i)
  i<-i+1
}

##
i<-5

while(i<10){
  print(i)
  i<-i+1
}

#ex03)
x<-2.987

while(x<=4.987){
  x=x+0.987
  print(c(x,x-2,x-1))
}

#functions
w<-2

m<-function()
{
  #w=20
  #w<-20
  w<<-20
}
m() #call the function "m()"

#cheack the value of veriable w
w