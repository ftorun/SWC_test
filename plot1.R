df <-read.csv("Metadata.csv")
#which variables
str(df)
library("ggplot2")
#Make first plot
ggplot(data=df, aes(x=Timepoint, y=ph, fill=Reactor.cycle))+ 
geom_point(shape=21)
df$Reactor.cycle <- factor(df$Reactor.cycle)
class(df$Reactor.cycle)
ggplot(dat=df, aes(Timepoint, y=temp, fill=Reactor.cycle))+
  geom_point(shape=21, size=4)
#Store ggplot object
p1<- ggplot(dat=df, aes(Timepoint, y=temp, fill=Reactor.cycle))+
  geom_point(shape=21, size=4)
p2<-p1+ theme_bw()+geom_point(shape=21, size=5)+
geom_line()
#facet_grit

p3<-p2+ facet_grid(~Reactor.cycle)
p3
df$Reactor.phase
levels(df$Reactor.phase)
p4<- p2+ facet_grid(Reactor.phase~Reactor.cycle)
p4

#Color based on reactor phase
#First 1: fill=Reactor.cycle is changed as p1<- ggplot(dat=df, aes(Timepoint, y=temp, fill=Reactor.phase))+geom_point(shape=21, size=4)
#Alternative way
p5<-p4+ geom_line(aes(color=Reactor.phase))
            
p5
