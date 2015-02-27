#Exam 1 solutions
library(extrafont)

#Problem 11
scores <- c(67,71,71,76,77,79,80,86,93,99)
mean <- mean(scores)
median <- median(scores)
pdf(file="exam1_hist.pdf",family="CM Roman")
hist(scores,breaks=c(60,70,80,90,100))
dev.off()

#Problem 12
age <- c(28,50,38,28,40,35,55,22)
income <- c(2500,3600,3100,2100,2600,2200,3000,1800)
pdf(file="exam1_scatter.pdf",family="CM Roman")
plot(age,income,main="Scatter Plot of Age v. Income",pch=16)
dev.off()

#Exam performance
scores <- data.frame(read.csv("sp15_exam1.csv",header=T))
mean <- mean(scores$score)
median <- median(scores$score)
range <- range(scores$score)

pdf(file="exam1_score_density.pdf",family="CM Roman")
plot(density(scores$score),main="Spring 2015 Exam 1 Score Distribution",xlab="Score (Out of 100)")
dev.off()

pdf(file="exam1_score_hist.pdf",family="CM Roman")
title <- "Spring 2015 Exam 1 Score Distribution"
hist(scores$score,main=title,xlab="Score (Out of 100)",xlim=range(50,120),breaks=30,col="gray")
dev.off()