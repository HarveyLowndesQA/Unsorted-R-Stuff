fails <- 0;

phy<-as.numeric(readline("Enter physics mark: "))

if(phy < 70) fails <- fails + 1

che<-as.numeric(readline("Enter chemestry mark: "))

if(che < 70) fails <- fails + 1

mat<-as.numeric(readline("Enter math mark: "))

if(mat < 70) fails <- fails + 1
 
result <- ((phy + mat + che) / 450) * 100

print(sprintf("Your result was %1.2f%%", result))

if(fails == 0) print("You pass!")

if(fails == 1) print("Retake module!")

if(fails == 2) print("Retake year!")

if(fails == 3) print("Go home!")