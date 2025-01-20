# Load necessary libraries
library(forecast)
library(tidyverse)

# Function to load and preprocess stock market data
load_data <- function(file_path) {
  data <- read.csv(file_path)
  data$Date <- as.Date(data$Date)
  return(data)
}

# Function to fit ARIMA model
fit_arima <- function(ts_data) {
  model <- auto.arima(ts_data)
  return(model)
}

# Function to fit Prophet model
fit_prophet <- function(data) {
  prophet_data <- data %>% 
    select(ds = Date, y = Close) # Assuming 'Close' is the column with stock prices
  model <- prophet(prophet_data)
  return(model)
}

# Function to make predictions using ARIMA
predict_arima <- function(model, h) {
  forecasted_values <- forecast(model, h = h)
  return(forecasted_values)
}

# Function to make predictions using Prophet
predict_prophet <- function(model, future) {
  forecasted_values <- predict(model, future)
  return(forecasted_values)
}
