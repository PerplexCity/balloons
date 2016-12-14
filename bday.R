library(ggplot2)

bday <- read.csv("~/Desktop/bday.csv")

bbi<-element_text(face="bold.italic", color="black")
ggplot(data=bday, aes(x=bday)) + 
  geom_histogram(binwidth = 1, fill="purple1") + 
  scale_x_continuous(breaks=seq(0, 100, 10)) + 
  labs(x="Birthday", title = "Balloon numbers on Instagram") + 
  theme(title=bbi, text = element_text(size=12),
        axis.text=element_text(size=12))

gendered <- sum(bday$Sex!="")
men <- sum(bday$Sex=="M") 
women <- sum(bday$Sex=="F") 

women/gendered

men1 <- dim(subset(bday, (Sex=='M') & ((bday<11) | (bday>29))))[1]
women1 <- dim(subset(bday, (Sex=='F') & ((bday<11) | (bday>29))))[1]
total1 <- men1 + women1

men1/total1

men2 <- dim(subset(bday, (Sex=='M') & ((bday>10) & (bday<30))))[1]
women2 <- dim(subset(bday, (Sex=='F') & ((bday>10) & (bday<30))))[1]
total2 <- men2 + women2

men2/total2

ggplot(data=gender, aes(x=bday, fill=Sex)) + 
  geom_histogram(binwidth = 1) + 
  scale_x_continuous(breaks=seq(0, 100, 10)) + 
  theme(title=bbi) +
  labs(x="Birthday", title = "Balloon numbers on Instagram") + 
  theme(title=bbi, text = element_text(size=12),
        axis.text=element_text(size=12))
