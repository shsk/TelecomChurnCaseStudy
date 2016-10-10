
###############  Checkpoint-1 : Data Understanding and Preparation of Master Dataset ##########################

# Set Working Directory
setwd("C:/Users/Kushal/Desktop/CaseStudy3")


# Install and Load the required packages
library(MASS)
library(car)
library(e1071)
library(ROCR)
library(caret)


# Load the given 3 data files viz customer, churn and internet to separate dataset
customer <- read.csv("customer_data.csv", stringsAsFactors = F )
churn <- read.csv("churn_data.csv", stringsAsFactors = F )
internet <- read.csv("internet_data.csv", stringsAsFactors = F )

# Check the uniqueness of joining column "customerID" in the 3 datasets
length(unique(customer$customerID))
length(unique(churn$customerID))
length(unique(internet$customerID))

# Remove whitespace if any and make same case for the joining column "customerID"
customer$customerID <- toupper(trimws(customer$customerID))
churn$customerID <- toupper(trimws(churn$customerID))
internet$customerID <- toupper(trimws(churn$customerID))

# Collate the 3 files in a single dataset
customer_churn <- merge(customer, churn, by= "customerID")
customer_churn_internet <- merge(customer_churn, internet, by= "customerID")

# Store the collated data into "churn" variable
churn <- customer_churn_internet


######################  Checkpoint-2 : Exploratory Data Analysis ##########################

# Understand the structure of the collated data

# Output the data into an excel file for some basic data understanding

write.csv(churn, "churn.csv")

# Total number of rows = 7043
# Total number of variables = 21
# Target variable = "Churn"
# Number of churn customers = 1869 i.e 26.5% of given dataset

# Percentage of male customer = 50.45%
# Percentage of female customer = 49.55% 
# Percentage of senior citizen = 16.21%
# Percentage of customer with partner = 48%
# Percentage of single customers = 52%
# 70% customers in dataset have no dependents
# Based on above data, sample looks very balanced and shows proper representation from all customer profile


# Average Tenure of customer is 32.37 months(assuming unit in month as it is not mentined in data dictionary)
# Important: There are 11 customers which are showing tenure as 0
# Distribution of tenure :

boxplot(churn$tenure, data= churn)

# 90% customers have taken landline phone service along with internet service.
# 55% customers has opted for month-to-month while 20% for one year and 25% for two years
# 60% customers have opted for paperless billing

# Average 64.75$ are being paid by a customer each month
# Average 2283.30$ paid by a customer to the telecom company

# 42% customers have multiple lines
# Important: There are 1526  (21.66%) customers in existing dataset those are not using internet service.
# 44% customers are using internet via Fibre Optics whereas 34% on DSL
# 49% customers availing internet service have opted for Streaming TV
# 49% customer availing internet have opted for streaming movies




# Make bar charts to find interesting relationships between variables.






######################  Checkpoint-3 : Data Preparation  ##########################

# Make Box plots for numeric variables to look for outliers. 



# Perform De-Duplication if required




# Bring the variables in the correct format




# Impute the missing values, and perform the outlier treatment (if required).



# K-NN Model:

# Bring the data in the correct format to implement K-NN model.

# Implement the K-NN model for optimal K.


# Naive Bayes Model:

# Bring the data in the correct format to implement Naive Bayes algorithm.

# Implement the Naive Bayes algorithm.


# Logistic Regression:

# Bring the data in the correct format to implement Logistic regression model.

# Select the variables using VIF criterion. 

# Implement the Logistic regression algorithm and use stepwise selection to select final variables


# Make the final logistic regression model.




# SVM:

# Bring the data in the correct format to implement the SVM algorithm.

# Implement the SVM algorithm using the optimal cost.







