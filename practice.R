1+1
1+2^3
exp(1)
sqrt(4)
my_vect<-c(1,3,6,7,9)
my_vect
my_vect<-c(1,3,6,7,9,TRUE,FALSE)
my_vect
my_vect[4]
x<-c(2,0,0,4)
x[1] # select the first element, equivalent to x[c(1)]
x[-1]# exclude the first element.
x[1]<-3;x
x[-1]<-5;x
y<-c(4,8,10,100,9)
y<9
y[4]
y[y<9]<-2
y<9
y[y<9]<-2


##Data frame
df<-data.frame(x=1:3, y=c('a','b','c'))
df

df1<-data.frame(x=c(1,4,9), y=c('a','b','c'))
df1
##slicing of a dataframe: df[row,col] always remember row comes first

df[1,c(1,2)] # slices only 1st row. since only 2 columns, select vector c(1,2)
df[2] # slices only 2nd column OR df[c(1:3),2] also will give the same result.
df[,2]
##1st row,2nd row, and 2nd column
df[c(1,2),2]
# 3rd row,1st row, 1st column
df[c(3,1),1]
##1st column, 2nd row, 2nd column
df[2,c(1,2)]
##3rd row
df[3,c(1:2)] # since there are only 2 columns, select vector c(1:2)in column
##or
df[3,]
