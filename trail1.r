t <- c(1,2,3,4,5)
y<- C(6,7,8,9,10)
z <-( y-t)
z
mean.z<- mean(z)
max.z<-max(z)
min.z<-min(z)
source("C:/Users/V5-471P/Desktop/trial/trail1.r")
ls()
z
save(t,y,z,mean.z,max.z,min.z, file="C:/Users/V5-471P/Desktop/trial/results.Rdata")
ls()
load("C:/Users/V5-471P/Desktop/trial/results.Rdata")
ls()


matrix1 <- matrix(data=1, nrow=3, ncol=3 )
matrix1
matrix2 <-matrix(data=NA, nrow= 3, ncol=6, byrow =  TRUE)
matrix2
dim(matrix2)

vector8<- 1:12
vector8

matrix3<- matrix(data=vector8, nrow=4)
matrix3

vector10 <- 1:10
vector10
vector9<- vector10^2
vector9 

matrix4 <- rbind(vector9,vector10)
matrix4
matrix5 <- cbind(vector9,vector10)
matrix5

dim(matrix5)
matrix5 <- rbind(vector3,vector3)
matrix5

rownames(matrix5)
rownmaes(matrix5)<- C("A","B","C","D","E","F","G")

rownames(matrix3)
dim(matrix3)

rownames(matrix3) <- c("A","B","C","D")
colnames(matrix3) <- c("AA", "AB","AC")
matrix3

matrix6 <- diag(c(1,2,3,4))
matrix6
diag(matrix6)

matrix9 <- diag(c(0,0,0))
diag(matrix9)
 
matrix10 <- matrix(1:9, nrow=3)
matrix10

matrix10[,1]
matrix10[1,]
matrix10[2,1:2]
matrix10[matrix10[,2]>4,]
matrix(data=1:4,nrow=2, ncol=2, byrow=TRUE)

matrix(data=1:9, nrow=3, ncol=3)

M1 <- matrix(1:10, nrow=4, ncol=3)
M1
M1[3,2]
M1[,1]
M1[1,]
M1[2,]
M1[c(2,4), c(1,3)]
M2<- matrix(c("a","b","c","d"),nrow=2)
M2
rownames(M2) <-c("AA","AB")
colnames(M2)<- c("SA","SB")
M1[ M1[,3]<5,]

A <- matrix(data=c(2,1,5,2,3,1,2,2,1), nrow=3,ncol=3)
B <-matrix(c(6,6,7), nrow=3)
dim(A)
dim(B)
M3 <- diag(1,3,3)

diag(M3)
diag(4)
diag(1:5)
diag(M3)

#matrix mutiplication

x <- matrix(data=1:4, nrow=2, ncol=2)
x
y <- matrix(diag(2),nrow=2)
y


z <- x%/%y
z

t(x)
x
t(y)
solve(x)
solve(y)
sum(x)
sum(y)
sum(diag(x))
sum(t(diag(x)))
det(x)
det(y)
eigen(x)
x$values
#bounce example
constant <- rep(1,times=10)
variable <- c(1,2,3,1,2,3,5,6,7,8)
x <- cbind(constant,variable)
y <-seq(1,10)
Beta.Hats<- solve(t(x)%*%x)%*%t(x)%*%y
colnames(Beta.Hats) <- "estimate"

OMG!!!!
#Array
  
A1 <- array(data=1:8, dim=c(2,2,2))
A1
A2 <- array(data=1:27 , dim=c(3,3,3))
A2
A1[1,1,1]
A1[1,,]
A2[,,2]
A2[3,3,]

#list

L1 <- list(names="samiksha",
     lastnames="bharne",
     DOB=02/04/1987,
     married="yes")
L1$names

L2<- list(name="suhas",
          husbandof="samiksha",
          profession="fellow",
          name.age=c(35,34))
L2
L2$name
L2$husbandof
L2$profession
L2$name.age

L2[[4]][2]
L2[[2]]

#factor------------------------------------

F1<-factor(c("M","M","M","F","F","F","M","F","F","O","O","M"),
         levels = c("M","F","O"),
       ordered = FALSE)
F1
str(F1)
str(L2)
class(F1)
class(L1)
class(vector8)
class(A1)
mode(A1)
mode(F1)
mode(L1)
mode(A2)

F2<-factor(c("G","VG","O","E","O","E","G","VG","O"),
           levels =c("G","VG","O","E"),
           ordered=FALSE)
str(F2)


#dataframe


employe <- data.frame(empid=c(1:4),
           empname=c("samiksha","suhas","saanchi","bhasme"))

employe
employe <- edit(employe)
rm(employe)
ls()

getwd()
setwd("C:/Users/V5-471P/Desktop/r_shriwastav sir")
dir()

set.seed(1)
z1<- pnorm(2, mean=0,sd=1, log=FALSE) 
z <- rnorm(102, mean=10,sd=5)
head(z)
tail(z)
str(z)
mode(z)
class(z)
summary(z)

table((vector8>3)&(vector8<3))
vector8


#apply functions---------------------------
#Lapply on the list

a< -list(x=1:10, y=nrom(5))
mean(a)
mean(a$x)
mean(a$y)
mean(a,range)


lapply(a,mean)
lapply(a,range)
lapply(a,sum)
lapply(a,sQuote)
lapply(a,max)

sapply(a,mean)
sapply(a,mean)
sapply(a,range)
sapply(a,sum)
sapply(a,sQuote)
sapply(a,max)

vapply(a,range,c(min=0,max=0))

M1 <- matrix(1:50,nrow=50,ncol=5)
 M1 <- M1^2 
  M1 <- sum(M1)
  
  
 v <-0
 for(i in 1: nrow(M1))
 {
   v <-c(v,sum(M1[i,]))
 print(sum(M1[i,])) 
   
 }
print(v[-1])  
  
apply(M1,1,sum) 
apply(M1,2,sum)  
apply(M1,2,mean)
apply(M1,1,max)
apply(M1,1,sqrt)
apply(M1,2,sd)

#tapply 


salary <- rnorm(40, mean=80000, sd=10000)
lacation <- rep(c("M","P","B","K"), each=10)

df1 <- data.frame(lacation, salary)
tapply(df1$salary,df1$lacation,mean)

#mapply

mapply(rnorm, 1:4,mean=c(100,200,300,400), sd=c(10,20,30,40))
mapply(rep, times=1:4, x=4:1)
mapply(rep, times = 1:4, x = 42)
mapply(function(x, y) seq_len(x) + y,
       c(a =  1, b = 2, c = 3),  # names from first
       c(A = 10, B = 0, C = -10))
word <- function(C, k) paste(rep.int(C, k), collapse = "")
utils::str(mapply(word, LETTERS[1:6], 6:1, SIMPLIFY = FALSE))



getwd()
dir()
scan("numb_in_file.txt")
file1 <-scan("numb_in_file.txt")
file1 <- scan("numb_in_file.txt", skip=2,nlines = 2 ,sep="",nmax =11,what = character())
mode(file1)
class(file1)


# read the file

read.table("EMP1.csv", sep=",")
empdata <- read.table("EMP1.csv", sep=",",header = TRUE)
head(empdata)
head(read.csv("EMP1.csv"))

str(empdata)
as.factor(empdata$DEPARTMENT_ID)
empdata$DEPARTMENT_ID <- as.factor(empdata$DEPARTMENT_ID)
names(empdata)
head(select(empdata,FIRST_NAME,LAST_NAME))
head(empdata)
head(filter(empdata, SALARY<10000  & JOB_ID=="IT_PROG"))
head(arrange(empdata, desc(SALARY)))
groupdata <- group_by(empdata,EMPLOYEE_ID,FIRST_NAME)     
summarise(empdata, mean(SALARY),length(SALARY))

source("example2.r")

sink("outpot1.txt")
output1<- 12
output2 <- 23
print("output is redirected")
print(output1*output2)          
print("out close")
sink()
print(12-13)
sink()
1*2
sink()

save( list=c("empdata","output1","output2"), file="sami.RData")
rm(list=c("empdata","output1","output2"))
head(empdata)
load("sami.Rdata")
read.table("empdata2.Rdata", sep="",header = TRUE)
scan("empdata2.Rdata")
head(empdata2.Rdata)
write.table(empdata, file="abc.txt", sep="|", col.names=TRUE)
write.csv(empdata,file="abc2.txt",sep="|")
dir()
library(xlsx)
xl<- read.xlsx("F-statistic.xlsx" , sheetIndex = 1,hearder=TRUE)
head(xl)
write.xlsx(empdata, "abc3.xlsx", sheetName = "sheet3", append=TRUE)
