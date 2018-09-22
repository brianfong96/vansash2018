# path and file names
p <- "" 
f <- ""

# variable to plot
varx <- ''
vary <- ''

# list of queries here
q1 <- df$

  
getwd()
setwd(p)

df <- read.csv(f)
t <- df[q1 ,]

t1 <- t[,c(varx, vary)]
plot(t1)

#rm(variablename)