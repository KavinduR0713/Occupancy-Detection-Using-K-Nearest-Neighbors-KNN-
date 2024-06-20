# Occupancy-Detection-Using-K-Nearest-Neighbors-KNN-
This project focuses on the implementation of a K-Nearest Neighbors (KNN) algorithm to predict occupancy status based on sensor data. The primary goal is to classify whether a room is occupied or not based on various environmental factors. The dataset contains readings from different sensors, including temperature, humidity, light, and CO2 levels. This project provides a comprehensive approach to understanding and implementing the KNN algorithm in R for classification tasks.

## Key Features and Techniques

### 1. Data Loading and Exploration:
 
- Loaded the occupancy dataset from a text file and performed initial exploratory data analysis (EDA) to understand its structure and contents.
- Used functions like names(), head(), tail(), summary(), and str() to get insights into the dataset's variables, summary statistics, and structure.

### 2. Data Preprocessing:
 
- Selected relevant features (Temperature, Humidity, Light, CO2) and excluded irrelevant ones.
- Introduced a new feature euclidean_distance to calculate the distance between the query point and each data point in the dataset using the Euclidean distance formula.

### 3. Distance Calculation:
 
- Defined a query point with specific values for temperature, humidity, light, and CO2.
- Computed the Euclidean distance between the query point and all other points in the dataset to determine the similarity.

### 4. Sorting and Selecting Nearest Neighbors:
 
- Sorted the dataset based on the calculated Euclidean distances to identify the nearest neighbors.
- Selected the top k nearest neighbors (where k is defined as 5 in this project).

### 5. Classification:
 
- Implemented the majority voting mechanism to classify the query point based on the occupancy status of the nearest neighbors.
- Determined the class of the query point (occupied or not occupied) by checking the majority class among the selected neighbors.

## Data Science Techniques Employed

- **K-Nearest Neighbors (KNN):** A simple, instance-based learning algorithm used for classification. The algorithm classifies a query point based on the majority class of its nearest neighbors.
- **Distance:** A method to measure the straight-line distance between two points in Euclidean space, used here to find the similarity between the query point and other data points.
- **Data Preprocessing:** Techniques to prepare and clean the dataset, ensuring that only relevant features are used for the analysis.
- **Majority Voting:** A decision rule used in classification to assign the class that has the majority among the nearest neighbors.

## Usage and Applications
This project showcases the implementation of the KNN algorithm for a binary classification task. The techniques demonstrated here can be applied to various fields such as anomaly detection, recommendation systems, and predictive maintenance. The approach can be adapted to different datasets and classification problems, making it a versatile tool in the data scientist's toolkit.

