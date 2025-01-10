# Big Data Analytics Course Project - SAS Visual analytics
This project is part of the **Big Data Analytics** course, utilizing **SAS Visual Analytics** to perform exploratory data analysis and predictive modeling for **PT. TanamiBumi**, a company in the agricultural sector. The project involves a comprehensive analysis of various crops, their production, seasonal trends, and agricultural practices using advanced statistical and machine learning techniques.

## Exploratory Data Analytics

### 1. Production Percentage by Cultivation Area
Visualizes the production percentage of different crops in various regions, highlighting Kerala and Tamil Nadu as the top producers.

### 2. Top 10 Crops by Production
Analyzes the top 10 crops with the highest production in PT. TanamiBumi, with coconut leading the list.

### 3. Production by Season
Examines crop production across different seasons, showing the highest yields during the Kharif and Rabi seasons.

### 4. Land Area vs Crop Yield
Investigates the relationship between land area and crop production, identifying crops like wheat and rice that require larger land areas.

### 5. Fertilizer and Pesticide Use
Analyzes the usage of fertilizers and pesticides across different crops, with insights into reducing environmental impact while maintaining high productivity.

## Data Preprocessing

### Centering and Scaling
Applied to columns such as ‘Area’, ‘Annual_Rainfall’, ‘Pesticide’, and ‘Fertilizer’ to standardize the data for more accurate analysis.

### Analytics Partitioning and Unique Identifier
Partitioned the data by year and used unique identifiers to ensure data integrity and efficient tracking.

## Modeling

### 1. Forest Model
A classification model using random forests to predict crop types based on production, season, area, and environmental factors.

### 2. Neural Networks Model
A neural network-based model for crop classification, emphasizing features like annual rainfall and land area for improved prediction accuracy.

### 3. Gradient Boosting Model
A gradient boosting model was implemented to evaluate factors affecting crop growth and predict the best outcomes, with coconut showing the best classification accuracy.

## Model Comparison

The comparison of models indicates that the **Gradient Boosting** model performs best in predicting coconut production with the lowest misclassification rate, highlighting the importance of rainfall, fertilizer, and seasonal factors.

## Conclusion

This project demonstrates the application of Big Data Analytics in agriculture, offering valuable insights into improving crop yields and operational efficiency through data-driven decisions.
