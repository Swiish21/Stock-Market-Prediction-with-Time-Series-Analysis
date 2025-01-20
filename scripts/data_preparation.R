# Load necessary libraries
library(tidyverse)

# Function to load raw stock market data
load_data <- function(file_path) {
  data <- read_csv(file_path)
  return(data)
}

# Function to clean the stock market data
clean_data <- function(data) {
  data <- data %>%
    filter(!is.na(Close)) %>%  # Remove rows with NA in 'Close' column
    mutate(Date = as.Date(Date)) %>%  # Convert Date column to Date type
    arrange(Date)  # Sort data by Date
  return(data)
}

# Function to save processed data
save_processed_data <- function(data, output_path) {
  write_csv(data, output_path)
}

# Example usage
# raw_data <- load_data("data/raw/stock_data.csv")
# cleaned_data <- clean_data(raw_data)
# save_processed_data(cleaned_data, "data/processed/cleaned_stock_data.csv")