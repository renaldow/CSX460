library(AppliedPredictiveModeling)
data(twoClassData)

str(predictors)
str(classes)

set.seed(1)

library(caret)
trainingRows <- createDataPartition(classes, p = .80, list = FALSE)

head(trainingRows)

trainPredictors <- predictors[trainingRows, ]
trainClasses <- classes[trainingRows]

testPredictors <- predictors[-trainingRows, ]
testClasses <- classes[-trainingRows]

str(trainPredictors)
str(trainClasses)

set.seed(1)

repeatedSplits <- createDataPartition(trainClasses, p = .80, times = 3)

fold1 <- cvSplits[[1]]

cvPredictors <- trainPredictors[fold1,]
cvClasses <- trainClasses[fold1]


