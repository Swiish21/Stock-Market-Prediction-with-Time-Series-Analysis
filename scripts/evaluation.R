# Evaluation script for stock market prediction models

# Load necessary libraries
library(forecast)
library(ggplot2)

# Function to evaluate model performance
evaluate_model <- function(actual, predicted) {
  # Calculate RMSE
  rmse <- sqrt(mean((actual - predicted)^2))
  
  # Calculate MAE
  mae <- mean(abs(actual - predicted))
  
  # Calculate MAPE
  mape <- mean(abs((actual - predicted) / actual)) * 100
  
  # Return evaluation metrics
  return(list(RMSE = rmse, MAE = mae, MAPE = mape))
}

# Function to plot predictions vs actual values
plot_predictions <- function(actual, predicted) {
  df <- data.frame(Time = 1:length(actual), Actual = actual, Predicted = predicted)
  
  ggplot(df, aes(x = Time) ) +
    geom_line(aes(y = Actual, color = "Actual")) +
    geom_line(aes(y = Predicted, color = "Predicted")) +
    labs(title = "Stock Price Predictions vs Actuals", x = "Time", y = "Stock Price") +
    scale_color_manual(values = c("Actual" = "blue", "Predicted" = "red")) +
    theme_minimal()
}