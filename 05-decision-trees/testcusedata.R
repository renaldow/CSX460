
cuse <- read.table("http://data.princeton.edu/wws509/datasets/cuse.dat", header=TRUE)

a <- cbind(cuse$using, cuse$notUsing)

#scrap

testdat <- data.frame(x=1:5, y=NaN, z=5:1)

testbad <- sapply(testdat, function(x) all(is.nan(x)))

testdat <- testdat[,!testbad]

set.seed(1)
dat2 <- data.frame(
  a = runif(100),
  b = rpois(100, 10),
  c = rep(c("a","b"), 100),
  stringsAsFactors = FALSE
)

str(dat2)
dat2$c <- factor(dat2$c)

library(randomForest)
randomForest(a ~ ., data = dat2)


#Test KNN
# the iris example used by knn(class)
library(class)
data(iris3)
train <- rbind(iris3[1:25,,1], iris3[1:25,,2], iris3[1:25,,3])
test <- rbind(iris3[26:50,,1], iris3[26:50,,2], iris3[26:50,,3])
cl <- factor(c(rep("s",25), rep("c",25), rep("v",25)))

# how to get predictions from knn(class)
pred <- knn(train, test, cl, k = 3, prob=TRUE)

# display the confusion matrix
table(pred,cl)
# view probabilities (only the highest probability is returned)
attr(pred,"prob")

#hist(iris$Sepal.Length)
