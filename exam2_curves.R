# K300 Exam 2 Curves
library(extrafont)

#11
mean=70; sd=12
lb=1; ub=50 #boundaries of shaded region
d=c(50,70) #axis marks
x <- seq(-3,3,length=100)*sd + mean
hx <- dnorm(x,mean,sd)

pdf(file="exam2_11.pdf",family="CM Roman")
plot(x, hx, type="n", yaxt='n', ann=FALSE, axes=FALSE)
i <- x >= lb & x <= ub
lines(x, hx)
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="gray") 
abline(v=mean)
abline(h=0)
axis(side=1, at=d, tick=FALSE)
dev.off()

#12a
mean=34; sd=0.75
lb=33.5; ub=55
d=c(33.5,34)
x <- seq(-3,3,length=100)*sd + mean
hx <- dnorm(x,mean,sd)

pdf(file="exam2_12a.pdf",family="CM Roman")
plot(x, hx, type="n", yaxt='n', ann=FALSE, axes=FALSE)
i <- x >= lb & x <= ub
lines(x, hx)
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="gray") 
abline(v=mean)
abline(h=0)
axis(side=1, at=d, tick=FALSE)
dev.off()

#12b
mean=34; sd=0.75
lb=33.2; ub=35.1
d=c(33.2,34,35.1)
x <- seq(-3,3,length=100)*sd + mean
hx <- dnorm(x,mean,sd)

pdf(file="exam2_12b.pdf",family="CM Roman")
plot(x, hx, type="n", yaxt='n', ann=FALSE, axes=FALSE)
i <- x >= lb & x <= ub
lines(x, hx)
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="gray") 
abline(v=mean)
abline(h=0)
axis(side=1, at=d, tick=FALSE)
dev.off()

#Bonus
mean=86.9; sd=4.27
lb=83.5; ub=110
d=c(83.5,86.9)
x <- seq(-3,3,length=100)*sd + mean
hx <- dnorm(x,mean,sd)

pdf(file="exam2_bonus.pdf",family="CM Roman")
plot(x, hx, type="n", yaxt='n', ann=FALSE, axes=FALSE)
i <- x >= lb & x <= ub
lines(x, hx)
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="gray") 
abline(v=mean)
abline(h=0)
axis(side=1, at=d, tick=FALSE)
dev.off()