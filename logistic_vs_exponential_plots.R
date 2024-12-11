#Definition of exponential function
exponential_fun <- function(t) {
  
  Nt <- N0*exp(r*t)
  
  return(Nt)
  
}

#For Scale reasons, we only show the plot between N0 < Population_Size < 3*K Refer to the interactive version for the full plot.
ggplot() +
  
  geom_function(aes(color = "Logistic Growth"), fun=logistic_fun) +
  
  geom_function(aes(color = "Exponential Growth"), fun=exponential_fun) +
  
  xlim(0, 5000) +
  
  ylim(N0, 3*K) +
  
  xlab("Time (minutes)") +
  
  ylab("Population Size") +
  
  ggtitle("Logistic vs Exponential Graphs") +
  
  scale_color_manual(values = c("Logistic Growth" = "red", 
                                "Exponential Growth" = "black")) +
  
  theme(plot.title = element_text(hjust = 0.5),
        legend.title = element_blank(),  
        legend.position = "bottom") +
  
  geom_point()

#The Semi-Log plot comparison is better for Comparison

ggplot() +
  
  geom_function(aes(color = "Logistic Growth"), fun=logistic_fun) +
  
  geom_function(aes(color = "Exponential Growth"), fun=exponential_fun) +
  
  xlim(0, 5000) +
  
  scale_y_continuous(trans='log10') + 
  
  xlab("Time (minutes)") +
  
  ylab("Population Size") +
  
  ggtitle("Logistic vs Exponential Graphs (Semi-log scaled)") +
  
  scale_color_manual(values = c("Logistic Growth" = "red", 
                                "Exponential Growth" = "black")) +
  
  theme(plot.title = element_text(hjust = 0.5),
        legend.title = element_blank(),  
        legend.position = "bottom") +
  
  geom_point()

