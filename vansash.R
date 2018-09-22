# path and file names
p <- "C:/Users/Brian/Downloads/" 
f <- "WFC_Ortec_MatchDate_2018_Datathon.csv"

getwd()
setwd(p)
df <- read.csv(f)
t <- df[df$Action=="direct free kick" & df$team=="Portland Timbers",]

#rm(variablename)
library(ggplot2)
ggplot() +
  geom_point(data = t, aes(x = LocX, y = LocY, colour = Result), size = 3) + 
  xlim(c(0, 100)) +
  ylim(c(0, 100)) + 
  ggtitle("Portland Timber Players Direct Free Kick") +
  xlab("Side line (Shooting this way >>>) ") + 
  ylab("Goal line")

  