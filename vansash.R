
p <- "C:/Users/Brian/Downloads/" 
f <- ""

getwd()
setwd(p)
df <- read.csv(f)
t <- df[df$Action=="indirect free kick" & df$player=="Liam Ridgewell",]
t1 <- t[,c('LocX', 'LocY')]
plot(t1)

#rm(variablename)