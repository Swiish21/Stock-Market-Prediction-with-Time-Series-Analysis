# Stock Market Prediction with Time-Series Analysis

This project aims to analyze stock market trends over the past five years and predict future stock prices using various time-series modeling techniques. The primary focus is on utilizing historical data to build predictive models and evaluate their performance.

## Project Structure

- **data/**
  - **raw/**: Contains raw stock market data files for analysis.
  - **processed/**: Contains cleaned and transformed data files for modeling.

- **notebooks/**
  - **data_preparation.Rmd**: R Markdown notebook for data preparation tasks, including loading and cleaning the raw data.
  - **exploratory_analysis.Rmd**: R Markdown notebook for exploratory data analysis (EDA), visualizing trends, and understanding the dataset.
  - **modeling.Rmd**: R Markdown notebook for building and training time-series models such as ARIMA, LSTMs, or Prophet.
  - **evaluation.Rmd**: R Markdown notebook for evaluating model performance and comparing predictions with actual stock prices.

- **scripts/**
  - **data_preparation.R**: Script containing functions for loading and cleaning stock market data.
  - **feature_engineering.R**: Script with functions for feature engineering, including moving averages and Relative Strength Index (RSI).
  - **modeling.R**: Script implementing time-series models for stock price prediction.
  - **evaluation.R**: Script for evaluating model performance and generating metrics.

- **results/**
  - **figures/**: Directory for visual outputs such as plots and graphs generated during the analysis.
  - **tables/**: Directory for tables summarizing the results of the analysis and model evaluations.

- **dashboards/**
  - **stock_prediction_dashboard.Rmd**: R Markdown file for creating an interactive dashboard displaying predictions versus actual stock prices.

## Setup Instructions

1. Clone the repository:
   ```
   git clone <repository-url>
   ```

2. Install required R packages:
   - Use the `install.packages()` function to install necessary packages listed in the `requirements.txt`.

3. Prepare the data:
   - Run the `data_preparation.R` script to load and clean the raw data.

4. Explore the data:
   - Open and run the `exploratory_analysis.Rmd` notebook to visualize trends and gain insights.

5. Build and evaluate models:
   - Use the `modeling.Rmd` and `evaluation.Rmd` notebooks to create and assess the performance of your models.

6. Generate the dashboard:
   - Run the `stock_prediction_dashboard.Rmd` to create an interactive dashboard showcasing your predictions.

## Usage Guidelines

- Ensure that the raw data files are placed in the `data/raw/` directory.
- Follow the notebooks in order for a structured analysis workflow.
- Modify scripts as needed to tailor the analysis to specific stocks or time periods.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.