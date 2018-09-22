plotstat <- function(p, f, a, t, gt)
{
  setwd(p)
  #devtools::install_github("torvaney/ggsoccer")
  library(ggsoccer)
  library(ggplot2)
  library(dplyr)
  
  df <- read.csv(f, stringsAsFactors = F, header =T)
  
  ggplot( df %>% head(.,1000) ) +
    annotate_pitch(x_scale = 1,
                   y_scale = 1,
                   colour = "gray70",
                   fill = "gray90") +
    geom_point(aes(x = LocX, y = LocY),
               fill = "white", 
               size = 3, 
               pch = 21) +
    theme_pitch() +
    coord_flip(xlim = c(0, 100),
               ylim = c(0, 100)) +
    ggtitle("Simple shotmap")
  
  shots <- df %>% filter(Action == a,
                         Team.in.possession==t)
  
  ggplot(shots) +
    annotate_pitch(x_scale = 1,
                   y_scale = 1
    ) +
    geom_point(aes(x = LocX, y = LocY, colour=Result),
               # fill = "white", 
               size = 3, 
               pch = 21) +
    theme_pitch() +
    coord_flip(xlim = c(0, 100),
               ylim = c(0, 100)) +
    ggtitle(gt)
}

# Enter your path name here to save grief when updating
# "C:/Users/Brian/Downloads/"

pathname <- "C:/Users/Brian/Downloads/"
filename <- "WFC_Ortec_MatchDate_2018_Datathon.csv"
action <- "direct free kick"
team <- "Vancouver Whitecaps FC"
gtitle <- paste(action, team, sep = " for ")

plotstat(p=pathname, f=filename, a=action, t=team, gt=gtitle)
