# Feature Engineering for Stock Market Prediction

# Load necessary libraries
library(dplyr)
library(Tidyverse)

# Function to calculate moving averages
calculate_moving_average <- function(data, window_size) {
  data %>%
    mutate(moving_average = zoo::rollmean(close, window_size, fill = NA, align = "right"))
}

# Function to calculate Relative Strength Index (RSI)
calculate_rsi <- function(data, n = 14) {
  delta <- diff(data$close)
  gain <- ifelse(delta > 0, delta, 0)
  loss <- ifelse(delta < 0, -delta, 0)
  
  avg_gain <- runmean(gain, n, fill = NA)
  avg_loss <- runmean(loss, n, fill = NA)
  
  rs <- avg_gain / avg_loss
  rsi <- 100 - (100 / (1 + rs))
  
  data$rsi <- c(NA, rsi)  # Add NA for the first row
  return(data)
}

# Function to perform feature engineering
feature_engineering <- function(data) {
  data <- calculate_moving_average(data, window_size = 20)
  data <- calculate_rsi(data)
  return(data)
}