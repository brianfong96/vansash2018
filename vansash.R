# path and file names
p <- "" 
f <- ""

# variable to plot
varx <- ''
vary <- ''

getwd()
setwd(p)
df <- read.csv(f)
t <- df[queries]
t
t1 <- t[,c(varx, vary)]
t1

plot(t1)

#rm(variablename)