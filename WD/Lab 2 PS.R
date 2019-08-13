#sample() function
print(sample((1:3)))
print(sample(1:3,size = 3,replace = FALSE))
print(sample(1:3, size = 4,replace = FALSE))
print(sample(1:3, size = 4,replace = TRUE))

#if condition
z<-1:10
if(sample(x,1)<=5){
  print("x is less than 5")
}else{
  print("x is greater than 5")
}

#nested if
x1<-0
if(x1<0){
  print("Negative number")
}else if(x1>0){
  print("positive number")
}else{
  print("zero")
}

#user Inputs
my.age<-as.integer(readline(prompt = "Enter Age : "))
if(my.age<18)
{
  print("you are not aMajor")
  print("you are noteligible to work")
}else{
  if(my.age>=18 & my.age<=60)
  {
    print("you are eligible to work")
    print("please fill the application")
  }else{
    print("as per government rules you are too old to work")
    print("please cpllect your pension!")
  }
}