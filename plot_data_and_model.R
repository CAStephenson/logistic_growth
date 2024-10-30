#Script to plot data and model

growth_data <- read.csv("experiment.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- exp(6.883e+00) # population size at time 0 as ln(N0) is the intercept of regression eq 1
  
r <- 1.004e-02 # using x intercept from model 1, this is the gradient of the slope of regression eq 1
  
K <- 6.00e+10   # using 2nd reg eq, parallel line mapped to plateau of population hence the intercept = K

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')

#Make a list of the packages required and save them in a file called package-versions.txt.

sink(file = "package-versions.txt")
sessionInfo()
sink()

#We will need to update the email to make the commits into your repository

git config --global user.email "<stephensoncatherine224@gmail.com>"
