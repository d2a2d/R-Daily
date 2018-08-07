##How to make plots from a list of ggplot figure

library(ggplot2) ##required for plotting
library(gridExtra) ##required for arranging plots

df = matrix(rexp(200, rate=.1),nrow=100, ncol=10) ##creating a random value data frame with 10 columns

ggfigure = list() ##initializing empty figure list
for (k in 1:ncol(df)) {
  data = data.frame(x=1:nrow(df),y=df[,k]) 
  ggfigure[[k]] <- ggplot(data,aes(x,y)) + geom_point() + theme_dark() ##assigning list value to plot
}

grid.arrange(grobs=ggfigure,ncol=2) ##finally arrange the plots in 2 columns