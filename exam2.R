## Ans to the qus no 7

year1= c(42,42,42,45,48,49,50,52,53,48,49,50,62,65,67)
year4= c(50,51,53,53,54,57,58,55,50,52,54,62,63,65,70)

plot(year1,type="l",col="red")
lines(year4,type="l",col="blue")

legend(12,60,c("year1","year4"),fill=c("red","blue"))
