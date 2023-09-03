"hello world"
.
.
.
.
name='amit'
name1='kunal'
name2='harshu'
name3='shweta'


age=23
age=21
age=24


x=21
y=3
x+y #addition of x and y


age=age+7 #over writing of previous value by adding
#another example 
#if>>
num=45
num=num+15
 
#arithmatic expressions
4*8

text='excellent'
#functions
paste('excelr is',text)#combination of with text [two inputs are combine]
#another example 
#if
text='good..'
paste('better..',text)
paste("my name is",name1)


var1='apple'
var2='mango'
var3='grapes'
var1=var2=var3='strawberry'

myvar='kunal'


#KEYWORDS>>>>>THESE ARE RESEVERED WORDS IN COMPUTER MEMORY
#EXAMPLE
TRUE
FALSE

#DATA TYPES OF R>>>>

##NUMERIC FLOAT-DECIMAL WHOLE +VE -VE
X=10.5
class(X)
CLASS(name)

##character
X='R IS EXICITING'
class(X)

##LOGICAL OR BOOLEAN
X=TRUE #OR T,FALSE,F
class(X)

# ARITHMATIC OPERATORS LIKE EQUAL ...NOT EQUAL...GREATER THAN...LESS THAN..ADDITION..SUBSTRACTION...DIVISION...MULTIPLICATION
#PERCENTAGE...SQUARE ROOT
5==10
3!=8
5>3
3<5

#IF
X=20
Y=3

X+Y
X-Y
X/Y
X*Y
X^2 #SQUARE ROOT
X^3 #CUBE 
X%%Y #REMAINDER OF DIVISION
X%/%Y #INTEGER
2*pi*6378
pi
pi*2

#built in functions of arithmatic operators
max(40,100,10.5)
min(12,35,0.5)
sqrt(25)
abs(-4.5)


#DATA STRUCTURES :VECTORS,DATAFRAMES,


##vectors
FRUITS=c("GRAPES","BANANA","ORANGE","APPLE")
numbers=c(1,1,2,3,4,5,6)

#heterogenous vectors
mix=c(2,1,TRUE,5L)
class(mix)


x=c(2,5,8,4)
y=c(1,9,9,9)
x+y
x-y
x*y
(x+y)*1.5



##sequence/sequenctial function>>>>
1:10
10:25
1:100
seq(1,50,5)#start value,end value ,increment or decrement value
seq(1,50,by=3) 
seq(20,50,-2)
seq(50,10,-2)



#repetion>>>>>>
rep(50,10)
rep('mango',5)


#random sample>>>>
sample(1:50,5)
sample(1:100,200)#default occurs due to sample is large than population
#for creating above input just add one function
#example
sample(1:100,200,replace=TRUE)
sample(c("kunal","harsh","raj"),10,replace=T)


###################################################

#INDEXING
#IF
X=c(2,45,44,33,67,34,22,12)
X[7]#INDEX WHICH WE WANT TO EXTRACT SHOULD BE WRITTEN IN SQUARE BRACKET
X[5]
#IF WE WANT TO EXTRACT MMORE THAN ONE NUMBER OR VARIABLE FROM PASS THIS TYPEOF FUNCTION


X[c(4,5)]
#IF U WANT TO REMOVE OR EXCULDE THE INDEX FROM THE VECTORS ELEMENTS
X[-1] #EXCLUDE THE 1ST ELEMENT FROM THE X=c(....)
X[-5] #.............5th "..........................
X[c(-4,-1)]
X[-1] =5


B=c(21,23,33,44,76,89,45)
B[-1]=4#IN THIS IT EXCEPT FIRST ELEMENT AND ALL OTHER VALUES ARE CHANGED
B[1]=3 #ONLY FIRST ELEMENT IS CHANGE 
B[3]=5
B[c(1,4,7)]



#########################################################3
y=c(1,9,9,9)
y<9
y>9
y[y>7]=5
y[y<8]=11


marks=c(80,60,90,70,88,50)
marks[marks>50]
marks==50

###################33
names=c('kunal','harshu','raj','ganesh',"kunal")
'kunal'%in%names
#########################################


#slicing
marks
marks[3:10]
marks[4]
marks[3]=97
marks[-3]=100


price=c(223,345,213,765,769.290,1000,3000,2000,2300,4210)
price[3:7]
sort(price)#sort the price into small to big or big to one
#example
help(sort)
sort(price,decreasing=T)#TO VIEW PRICE FROM LARGE TO SMALL
sort(price,decreasing=F)#TO VIEW PRICE FROM SMALL TO BIG


###LENGTH>>>>>NO.OF ELEMENTS IN LIST OR VECTOR
length(marks)
length(price)
  
#paste function
paste(1:12)##########################################################
nth=paste(1:12,c('st','nd','rd', rep('th',9)))
nth          

month.name#constant whic h are already present in R
month.abb
paste(month.name,'is the',nth,'month of the year')
paste(names,'is boy')



#basic functions of vectors
#example
price_of_toys=c(567,2000,439,2134,789,900,478,2789.6723,4556,2113)
length(price_of_toys)
max(price_of_toys)
min(price_of_toys)
mean(price_of_toys)
median(price_of_toys)
mode(price_of_toys)

#################################################3
#DATA FRAME
#IF
A=c(22,46,67,89,12)
B=c(21,34,45,44,90)
df=data.frame(A,B)

#EXAMPLE OF DATA FRAME
#DF1
df1=data.frame(
  training=c("strength","stamina","other"),
           pulse=c(12,23,44),
           duration=c(33,88,45)
)


#example 2
NAME=c("KUNAL","DHRUV","RAJ","PRIYA","JIGNESH","AMEY")
ROLL.NO=c(12,34,44,11,87,55)
MARKS=c(740,210,543,326,600,431)
df2=data.frame(NAME,ROLL.NO,MARKS)


df2[,1]#all rows and first column
df2[2,3]#2 row and 3 column
df2[,]#all rows and all columns


HEIGHT=c(150,160)
WEIGHT=c(65,72)
df3=data.frame(HEIGHT,WEIGHT)


########################
#example
#FOOD
FOOD=data.frame(NAME=c("pav bhaji","paneer masala","kaju katli","butter chicken",
"gulab jam","mutton biryani"),
TYPE=c("veg","veg","veg","nonveg","veg","nonveg"),
TASTE=c("spicy","spicy","sweet","spicy","sweet","spicy"),
PRICE=c(120,235,420,340,90,315))

#NOW WE ARE EXTRACTING SOME ITEMS BY CERTAIN CONDITION
#CONDITION 1>>>ROWS WITH FOOD TYPE: VEG
FOOD
FOOD[FOOD$TYPE=="veg",]

#CONDITION2>>>FOOD NAMES AND PRICE OF NONVEG ITEMS
FOOD[FOOD$TYPE=="nonveg",c("NAME","PRICE")]
#or
FOOD[FOOD$TYPE=="nonveg",c(1,4)]

#condition3>>>all spicy food with price less than 300
FOOD[FOOD$TASTE=="spicy"&FOOD$PRICE<300,]
FOOD[FOOD$TASTE=="spicy"|FOOD$PRICE<300,]


#orange and mtcars are built in dataset
Orange
mtcars


dim(mtcars)#function to check dimension[rows and colums]
nrow(mtcars)#function to check no.of rows
ncol(mtcars)#function to check no.of columns
str(mtcars)#function to check>.column names data type and values
summary(mtcars)#summary of each column
help(mtcars)#to check the  info of data set which is visible in help section
mtcars$cyl#to check values of indivual columns
table(mtcars$cyl)#there are 11 cars hving 4 cyclinders ,7cars hving 6 cyclinders and 8 cars hving 14 cyclinders
mtcars$gear
table(mtcars$gear)
View(mtcars)

###############################
#usarresets
USArrests
help("USArrests")
View(USArrests)#to view the data set
head(USArrests)#to see first 6 records
tail(USArrests)#to see last 6 records
tail(USArrests,10)#to see more than last 6 records

###################
#to check all available data sets
data()
