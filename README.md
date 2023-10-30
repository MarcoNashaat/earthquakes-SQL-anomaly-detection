# earthquakes-SQL-anomaly-detection
Earthquake Anomaly Detection using SQL
This repository contains SQL queries written in MS SQL Server Management Studio for performing anomaly detection on an earthquake dataset. The queries utilize various profiling and analysis techniques, including ordering, grouping, calculating frequencies, percentiles, and advanced statistical measures such as average, standard deviation, and z-score to identify outliers.

## Dataset
The dataset used for this analysis contains earthquake records, including information such as earthquake magnitude, location, and timestamp. The dataset is assumed to be stored in a SQL Server database and accessed through SQL queries.

## SQL Queries
The following SQL queries are provided in this repository:

1. Simple Techniques
order_by_magnitude: Orders the earthquake records by magnitude in ascending or descending order.

group_by_magnitude: Groups the earthquake records by magnitude and calculates the frequency of each magnitude.

2. Advanced Techniques
calc_percentiles: Calculates the percentiles (e.g., 25th, 50th, 75th) of the earthquake magnitudes.

divide_into_buckets: Divides the earthquake data into buckets or n-tiles based on magnitude.

calculate_average: Calculates the average magnitude of earthquakes.

calculate_std_dev: Calculates the standard deviation of earthquake magnitudes.

calculate_z_score: Calculates the z-score for each earthquake magnitude, identifying outliers based on a given threshold.

## Getting Started
To use these SQL queries, follow these steps:

1. Clone or download this repository to your local machine.
2. Open SQL Server Management Studio.
3. Connect to the appropriate SQL Server database.
4. Open the desired SQL query file.
5. Modify the query if necessary to match your table and column names.
6. Execute the query to obtain the desired results.


## Contributing
Contributions to this repository are welcome. If you have any suggestions, improvements, or additional queries related to earthquake anomaly detection, please feel free to submit a pull request. Ensure that your code follows the established coding conventions and is well-documented.


Contact
If you have any questions, suggestions, or need assistance, please contact [https://www.linkedin.com/in/marco-nashaat/].
