
salaries <- c(17500, 23500, 50000, 75000, 100000)
bonus <- c(500, 1000, 1750, 3000, 5000)
total <- salaries + bonus

#print(mean(x))
#print(median(x))
#print(range(x))
#print(max(x))
#print(sum(x))

#print(x + bonus)

#print(x * 1.05)

xdf <- data.frame(salaries, bonus, total)

print(xdf)


plot(salaries, type="o", col="blue", ylim=range(0, salaries, total), 
     axes=FALSE, ann=FALSE)

axis(1, at=1:5, lab=salaries)
axis(2, las=1, at=10000*0:range(0, salaries, total)[2])
lines(total, type="o", pch=22, lty=2, col="red")

box()

title(main="Salaries and Bonus", col.main="red", font.main=4)