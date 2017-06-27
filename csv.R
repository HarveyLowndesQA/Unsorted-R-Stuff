DF <- read.csv(file="C:\\Users\\Administrator\\Documents\\R\\data.csv", header=FALSE, sep=',')

print(table(DF[,5]))

pie(table(DF[,5]))