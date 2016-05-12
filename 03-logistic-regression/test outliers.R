


home <- setwd(Sys.getenv("HOME"))
home <- paste(home, "/Documents/Dev/R/class/CSX460/03-logistic-regression/testoutliers.csv", sep = "")
home 

testoutliers <- read.csv(home, stringsAsFactors = FALSE)
head(testoutliers)
str(testoutliers)

summary(testoutliers)
IQR(testoutliers$Test.Outliers)
quantile(testoutliers$Test.Outliers)

quantile(testoutliers$Test.Outliers, probs = c(0.05, 0.90))

boxplot(testoutliers$Test.Outliers, main="Boxplot for testing outliers", ylab="Numbers")


# test for loop
for(i in 1:10)
{
  print(i)
}