#Random responses
random<-runif(69,0,100)
hist(random,breaks=20,xlab="Random Guesses",main="Percentage of African Countries in UN")
abline(v=28,col="red")

#Class responses
class<-read.csv("anchor_responses.csv",header=F)
class<-c(8,9,7,7,7,6,6,8,10,15,20,12,11,10,55,75,55,65,66,66,55,70,70)
hist(class$V1,breaks=20,xlab="Student Answers",main="Percentage of African Countries in UN")
abline(v=10,col="blue")
abline(v=65,col="green")
