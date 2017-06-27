##1

f<-function() {
  ad<-function(a,b) print(a + b)
  ml<-function(a,b) print(a*b)
  return(ad)
}

g = f()
#g(1,2)

##2

x<-function() {
  a<-10
  print(a)
  do.call(function() {
    a<-20
    print(a)
  },list())
  print(a)
}
#x()

x1<-function() {
  a<-10
  print(a)
  do.call(function() {
    a<<-20
    print(a)
  },list())
  print(a)
}
#x1()

x2<-function(f) {
  do.call(f,list())
}
x2(x1)

