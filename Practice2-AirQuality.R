airquality<-datasets::airquality  ##assigning value ( here airquality) to the data set
head(airquality,5) #shows first five rows in the console
tail(airquality,n=3) ## shows last 3 rows in the console.
summary(airquality) ## displays the statistical summary of the data

#for single column for eg. wind, the summary can be written as below
summary(airquality[,3])

plot(airquality$Ozone) # for ploting the parameters in graphical form

plot(airquality$Ozone,airquality$Wind) # using 2 parameters Ozone and Wind
plot(airquality) # plots all the variables in the dataset. remember upper and lower triangles are mirror images.

##points and lines

plot(airquality$Ozone,xlab ='ozone Concentration',ylab='No of Instances',main='Ozone levels in NY city',col='blue')


##Bar Diagram
barplot(airquality$Ozone,xlab = 'ozone Concentration',ylab = "No of Instances",main = 'Ozone Concentration in NY city',col = "green")

#bar diagram- horizontal
barplot(airquality$Ozone,xlab = 'ozone concentration',ylab = 'No of instances',main = 'ozone concentration in NY city ',col = 'green',horiz = TRUE)

##hISTOGRAM  simply chanfe barplot to hist
hist(airquality$Ozone)

hist(airquality$Ozone,xlab = 'ozone Concentration',ylab = "No of Instances",main = 'Ozone Concentration in NY city',col = "green")


##BOXPLOT
boxplot(airquality) ##plots all the parameters

boxplot(airquality[,1:4],main='Multiple Box Plots')

##margin of the grid(mar)
##number of rows and columns(mfrow)
##whether any border is to be included(bty)
#labels)