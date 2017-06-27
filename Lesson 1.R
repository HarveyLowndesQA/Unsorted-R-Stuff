
a<-10
b<-10
c<-a+b
print(c)

assign("x", 10)
x=10
x<-10

no<-readline("Enter first number")
no2<-readline("Enter second number")

result<-as.numeric(no) + as.numeric(no2)

for(p in 1:20)
  print(p)

print("----")

for(q in seq(1,20))
  print(q)

print("----")

for(r in seq(1,20, by=5))
  print(r)

print("----")

for(s in seq(20,1, by=-1))
  print(s)