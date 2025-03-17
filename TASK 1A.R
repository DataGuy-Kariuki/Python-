
#Step 1: Load the Data and Split into Training and Test Sets
#The dataset is split into training data (years 2001–2004) and test data (year 2005).

# Load the ISLR package and Smarket dataset
#install.packages("ISLR")
library(ISLR)
data(Smarket)

# Split the data into training and test sets
train <- (Smarket$Year < 2005)
Smarket_train <- Smarket[train, ]
Smarket_test <- Smarket[!train, ]


#Step 2: Build the LDA Model
#We use the lda() function from the MASS package to build the LDA model.

# Load the MASS package
library(MASS)

# Build the LDA model
lda_model <- lda(Direction ~ Lag1 + Lag2 + Lag3 + Lag4 + Lag5 + Volume, data = Smarket_train)
lda_model

#Step 3: Make Predictions on the Test Data
#Use the predict() function to classify the test data

# Make predictions on the test data
lda_predict <- predict(lda_model, Smarket_test)

# Display the predicted classes
lda_predict$class

#Step 4: Evaluate the Model
#Use a confusion matrix to evaluate the performance of the LDA model.

# Create a confusion matrix
table(lda_predict$class, Smarket_test$Direction)

# Calculate accuracy, sensitivity, and specificity
#install.packages("caret")
library(caret)
confusionMatrix(lda_predict$class, Smarket_test$Direction)

## TASK 2B

#Step 1: Build the QDA Model
#We use the qda() function from the MASS package to build the QDA model.

# Build the QDA model
qda_model <- qda(Direction ~ Lag1 + Lag2 + Lag3 + Lag4 + Lag5 + Volume, data = Smarket_train)
qda_model

# Make predictions on the test data
qda_predict <- predict(qda_model, Smarket_test)

# Display the predicted classes
qda_predict$class

# Create a confusion matrix
table(qda_predict$class, Smarket_test$Direction)

# Calculate accuracy, sensitivity, and specificity
confusionMatrix(qda_predict$class, Smarket_test$Direction)
