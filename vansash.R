# path and file names
p <- "C:/Users/Brian/Downloads/" 
f <- "WFC_Ortec_MatchDate_2018_Datathon.csv"

# variable to plot
varx <- 'LocX'
vary <- 'LocY'

getwd()
setwd(p)
df <- read.csv(f)
t <- df[df$Action=="direct free kick" & df$team=="Portland Timbers",]
t1 <- t[,c(varx, vary)]

plot(t1, col=df$player, xlim=c(0,100), ylim=c(0,100))

#rm(variablename)
library(ggplot2)
ggplot() +
  geom_point(data = t, aes(x = LocX, y = LocY, colour = Result)) + 
  xlim(c(0, 100)) +
  ylim(c(0, 100)) + 
  ggtitle("Portland Timber Players Direct Free Kick")

  