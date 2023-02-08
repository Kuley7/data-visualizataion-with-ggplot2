
install.packages("ggplot2")
library("ggplot2")
A<-c(1,2,3,4,5)
b<-c(6,7,8,3,5)
myplot<-qplot(A,b)
myplot
myplot<-qplot(A,b,geom ="blank")+geom_point(size=3,shape=6,color="red")+geom_line(color="blue",linetype=1)
myplot
x <- 1:20
y <- c(-1.49,3.37,2.59,-2.78,-3.94,-0.92,6.43,8.51,3.41,-8.23,
          -12.01,-6.58,2.87,14.12,9.63,-4.58,-14.78,-11.67,1.17,15.62)
ptype <- rep(NA,length(x=x))
ptype[y>=5] <- "too_big"
ptype[y<=-5] <- "too_small"
ptype[(x>=5&x<=15)&(y>-5&y<5)] <- "sweet"
ptype[(x<5|x>15)&(y>-5&y<5)] <- "standard"
ptype <- factor(x=ptype)
ptype
qplot(x,y,color=ptype,shape=ptype)
qplot(x,y,color=ptype,shape=ptype) + geom_point(size=4) +
  geom_line(mapping=aes(group=1),color="black",lty=2) +
  geom_hline(mapping=aes(yintercept=c(-5,5)),color="red") +
  geom_segment(mapping=aes(x=5,y=-5,xend=5,yend=5),color="red",lty=3) +
  geom_segment(mapping=aes(x=15,y=-5,xend=15,yend=5),color="red",lty=3)

#With the following data, create a plot of weight on the x-axis and height on the y-axis. Use different point characters or colors to
#distinguish between males and females and provide a matching
#legend. Label the axes and give the plot a title.
#Weight (kg) Height (cm) Sex
weight<-c(55,85,75,42,93,63,58,75,89,67)
height<-c(161,185,174,154,188,178,170,167,181,178)
sex<-c("F","M","M","F","M","M","F","M","M","F")
dataframe<-data.frame(weight,height,sex)
dataframe
qplot(weight,height)
B<-ggplot(dataframe,aes(main="scatter plot for weiht against height",x=height, y=weight,colour=sex))
B + geom_point()
