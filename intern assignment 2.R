#load data

library(ggplot2)
library(gcookbook)
install.packages("ggplot")
#data(mtcars, package="datasets")
mtcars <-read.csv("C:\\Users\\nalin\\Downloads\\mtcars.csv", header=TRUE, stringsAsFactors=FALSE)
head(mtcars)
# get discription of data set
??mtcar
dim(mtcars)
names(mtcars)
str(mtcars)

#histogram
hist(mtcars$disp)
hist(mtcars$mpg)

hist(mtcars$hp)
hist(mtcars$drat )

#Paire plot
pairs(mtcars)
pairs(mtcars[.1:7])

#Scatter plot mpg and distances 
plot(cars$dist~cars$speed, # y~x
     main="Relationship between car distance & speed", #Plot Title
     xlab="Speed (miles per hour)", #X axis title
     ylab="Distance travelled (miles)", #Y axis title
     xlim=c(0,30), #Set x axis limits from 0 to 30 ylim=c(0,140), #Set y axis limits from 0 to  30140  xaxs="i", #Set x axis style as internal 
     yaxs="i", #Set y axis style as internal  
     col="red", #Set the colour of plotting symbol to red 
     pch=19) #Set the plotting symbol to filled dots

#wt vs mpg
wtMpg <- mtcars[,c('wt','mpg')]
# Plot the chart for cars with weight between 2.5 to 5 and mileage between 15 and 30.
plot(x = wtMpg$wt,y = wtMpg$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(1,6),
     ylim = c(10,35),        
     main = "Weight vs Milage"
)

#horsepower vs mieage
hpMpg <- mtcars[,c('hp','mpg')]
plot(x = hpMpg$hp,y = hpMpg$mpg,
     xlab = "Horse Power",
     ylab = "Milage",
     xlim = c(50,350),
     ylim = c(10,35),        
     main = "Horsepower vs Milage"
)

#Create a bar graph, that shows the number of each gear type in mtcars
gearType<-table(mtcars$gear)
View(gearType)
#vector of names appearing under each bar
xVal<-c("Type 3", "Type 4","Type 5")
# Plot the bar chart 
barplot(gearType,names.arg=xVal,xlab="Gear Types",ylab="Total # of each type",col="green",
        main="Distribution Of Gear Types",border="black")

#stack bar chart
#Gear types and cylinders
cylGear<-table(mtcars$cyl,mtcars$gear)
View(cylGear)
#Fill colors
colors = c("blue","red","yellow")
xVal<-c("Type 3", "Type 4","Type 5")
# Create the bar chart
barplot(cylGear, main = "Distribution of Gears vs Cyclinders", names.arg = xVal, xlab = "Gear Types", ylab = "Frequency", col = colors)

# Add the legend to the chart
legend("topright", rownames(cylGear), cex = 1.3, fill = colors)






