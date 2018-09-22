plotstat<- function(p, f, a, t, title, xlabel, ylabel)
{
  getwd()
  setwd(p)
  df <- read.csv(f)
  t <- df[df$Action==a & df$team==t,]
  
  library(ggplot2)
  ggplot() +
    geom_point(data = t, aes(x = LocX, y = LocY, colour = Result), size = 3) + 
    xlim(c(0, 100)) +
    ylim(c(0, 100)) + 
    ggtitle(title) +
    xlab(xlabel) + 
    ylab(ylabel)
}

# path and file names
pathname <- "C:/Users/Brian/Downloads/" 
filename <- "WFC_Ortec_MatchDate_2018_Datathon.csv"
action <- "direct free kick"
team <- "Portland Timbers"
gtitle <- "Portland Timber Players Direct Free Kick"
xl <- "Side line (Shooting this way >>>) "
yl <- "Goal line"

plotstat(p = pathname,f = filename, a=action, t = team, title = gtitle, xlabel = xl, ylabel = yl)

  