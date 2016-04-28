
library(AppliedPredictiveModeling)
#rm("segmentationOriginal")


segData <- subset(segmentationOriginal, Case == "Train")


cellID <- segData$Cell
class <- segData$Class
case <- segData$Case

segData <- segData[, -(1:3)]

statusColNum <- grep("Status", names(segData))
statusColNum 

segData <- segData[, -statusColNum]

library(e1071)

hist(segData$AngleCh1)

hist(segData$AreaCh1)

skewness(segData$AngleCh1)

skewValues <- apply(segData, 2, skewness)

head(skewValues)

library(caret)

Ch1AreaTrans <- BoxCoxTrans(segData$AreaCh1)
Ch1AreaTrans

len <- length(unique(segData$AreaCh1))
mymin <- min(segData$AreaCh1)
mymax <- max(segData$AreaCh1)
myavg <- mean(segData$AreaCh1)
mydiv <- mymax/mymin

hist(segData$AreaCh1, main="AreaCh1 Graph",xlab="AreaCh1",border="blue", xlim=c(0,mymax), las=1,breaks=len - 1)
axis(side=1, at=seq(0,mymax, 100),labels=seq(0,mymax,100))

head(segData$AreaCh1)

predict(Ch1AreaTrans, head(segData$AreaCh1))

# to center and scale automatically

pcaObject <- prcomp(segData, center=TRUE, scale. = TRUE)
head(pcaObject$x[,1:5])

str(segData)

correlations <- cor(segData)

dim(correlations)

install.packages("corrplot")
library(corrplot)

version

corrplot(correlations, order = "hclust")

data("cars")


