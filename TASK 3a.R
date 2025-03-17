#Install Required Packages
#First, install the AppliedPredictiveModeling package

#install.packages("AppliedPredictiveModeling")
library(AppliedPredictiveModeling)


#Load the Data
#Load the unimelb_training.csv file into R. Ensure the file is in your working directory.

# Load the data
library(readr)
grantData <- read.csv("2025/unimelb_training.csv", stringsAsFactors = TRUE)

# Check the structure of the data
str(grantData)

## Update and Run the CreateGrantData.R Script
## The CreateGrantData.R script is part of the AppliedPredictiveModeling package. We will modify it to include the necessary updates and run it.

#Use the scriptLocation() function to find the path to the CreateGrantData.R script

library(AppliedPredictiveModeling)
scriptLocation()

#Modify the Script
#Make the following changes to the CreateGrantData.R script
#Add options(expressions = 15000) at the beginning of the script

options(expressions = 15000)

#Add stringsAsFactors = TRUE to the read.csv() command:

grantData <- read.csv("unimelb_training.csv", stringsAsFactors = TRUE)
