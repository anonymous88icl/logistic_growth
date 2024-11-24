growth_data <- read.csv("experiment.csv")

install.packages("ggplot2")
library(ggplot2)

#Standard Time vs Population Plot
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()


#Semi-log plot
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  scale_y_continuous(trans='log10')
