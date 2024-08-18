# Movies Analysis Project

## Overview

This repository contains a comprehensive analysis of a movie database. The project involves extracting data from a SQL Server database, performing various data analyses, and generating visualizations to answer specific business questions about the movie industry.

## Project Components

1. **Data Extraction**: Scripts to connect to SQL Server and retrieve data from the movie database.
2. **Data Analysis**: Python scripts and Jupyter notebooks that perform data analysis on the retrieved data. Analysis includes:
   - Identifying the highest-grossing Oscar-winning films.
   - Determining the top 10 countries by film profit.
   - Listing films for each country.
3. **Visualizations**: Plots and charts generated to visualize the analysis results and insights derived from the data.

## Getting Started

### Prerequisites

- **Python**: Ensure Python is installed on your machine.
- **Libraries**: This project uses the following Python libraries:
  - `pandas`
  - `numpy`
  - `pyodbc`
  - `matplotlib`
  - `seaborn`

  You can install the required libraries using `pip`.

- **SQL Server**: Access to a SQL Server database containing the movie data.

### Setting Up the Environment


**Database Connection**:
   - Ensure you have the correct connection details for your SQL Server database.
   - Update the connection settings in the data retrieval scripts.

### Running the Analysis

1. **Data Retrieval**:
   - Use the provided scripts to connect to SQL Server and fetch data. Ensure the SQL Server library is installed and configured correctly.

2. **Data Analysis**:
   - Analyze the data using the provided Python scripts or Jupyter notebooks. The analysis includes:
     - Highest-grossing Oscar-winning films
     - Top 10 countries by film profit
     - Films listed by country

3. **Visualizations**:
   - Generate visualizations using Matplotlib and Seaborn. Visualizations include:
     - Bar charts of the top 10 countries by total film profit
     - Other relevant charts based on analysis results

## Contact

For any questions or feedback, please reach out to [fares.social41@gmail.com] or create an issue in the repository.
