library(ggplot2)
library(gridExtra)
library(cowplot)

k=read.csv("C:\\Users\\jaswa\\AIT_FINAL\\AIT_FINAL_PROJECT.csv")
k


v1=ggplot(k, aes(x= type , y=station_name )) +
   scale_color_gradient(low = "green", high = "brown")+ layer(
    geom = "point", stat = "identity", position = "identity",
    params = list(na.rm = FALSE))+
  labs(x = "Type",y = "Station Name",title = "TYPE VS STATION NAME")

v1



v2=ggplot(k,aes(x = longitude, y =station_name , color =longitude ))+ 
  scale_color_gradient(low = "green", high = "brown")+ layer(
  geom = "point", stat = "identity", position = "identity",
  params = list(na.rm = FALSE))+
  labs(x = "Longitude",y = "Station Name",title = "LONGITUDE VS STATION NAME")

v2



v3=ggplot(k,aes(x = latitude, y =station_name , color =latitude ))+ 
  scale_color_gradient(low = "green", high = "brown")+ layer(
  geom = "point", stat = "identity", position = "identity",
  params = list(na.rm = FALSE))+
  labs(x = "latitude",y = "Station Name",title = "LATITUDE VS STATION NAME")

v3





v4=ggplot(k,aes(x =max_temp , y =station_name , color =max_temp ))+ 
  scale_color_gradient(low = "green", high = "red")+
  layer(geom = "point", stat = "identity", position = "identity",
  params = list(na.rm = FALSE))+
  labs(x = "Max Temperature",y = "Station Name",
       title = "MAX TEMPERATURE VS STATION NAME")

v4


v5=ggplot(k,aes(x =min_temp , y =station_name , color =min_temp ))+ 
  scale_color_gradient(low = "red", high = "green")+ layer(
  geom = "point", stat = "identity", position = "identity",
  params = list(na.rm = FALSE))+
  labs(x = "Min Temperature",y = "Station Name",title = "MIN TEMPERATURE VS STATION NAME")

v5



grid.arrange(v2,v3,nrow=1)



#Useing the summary() function to produce numerical summary of the variables in the data set.


library(tidyverse)
summary(k)





#linear reggresion


ggplot(data =k , aes(max_temp,min_temp)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "age~lweight",
       subtitle =  "influential data point")




plot(k$max_temp~k$min_temp)
linmod= lm(k$min_temp~k$max_temp)
abline(linmod, col="red")
plot(k$min_temp~k$max_temp)
linmod = lm(k$min_temp ~ k$max_temp)
abline(linmod)
abline(linmod,col="red")
linmod




ggplot(k, aes(x=degrees_from_mean , y=type)) + 
  geom_boxplot() +
  theme(legend.position = "none")+
  theme(axis.text.x = element_text(face="bold", color="#993333", 
  size=14, angle=45),axis.text.y = element_text(face="bold", color="#993333", 
  size=14, angle=45))+theme( axis.line = element_line(colour = "black", 
  size = 1, linetype = "solid"))+
  labs(x = "Degrees_From_Mean",y = "Type",title = "DEGREE_FROM_MEAN VS TYPE")+
  geom_jitter(alpha = 0.3, color = "tomato")





