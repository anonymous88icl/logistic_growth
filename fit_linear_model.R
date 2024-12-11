#Script to estimate the model parameters using a linear approximation

install.packages("dplyr")
library(dplyr)

#We assume the programs are run in series -- no need to re-read the data file
#growth_data <- read.csv("experiment.csv")


#This is not actually a great way to do the fitting, since it is not very reusable
#   (for example, if we change the data). A better way would be to do a logistic 
#   regression directly by minimizing squared loss, but that would require
#   numerical optimization techniques.
#Case 1. K >> N0, t is small

data_subset1 <- growth_data %>% filter(t<1550) %>% mutate(N_log = log(N))

model1 <- lm(N_log ~ t, data_subset1)

summary(model1)

#Case 2. N(t) = K

data_subset2 <- growth_data %>% filter(t>4000)

model2 <- lm(N ~ 1, data_subset2)

summary(model2)

