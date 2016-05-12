#?append
#?sample
sample(x, replace=TRUE) %>% mean
x %>% mean

x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
sapply(x, mean)

sapply(1:k, function(i) sample(x,replace=TRUE) %>% mean )

sample.int(15, 12)

#convert vector to dataframe (see exercise 4)

# (RW) if probability is greater than .5 then TRUE meaning is versicolor
yhat = predict(fit.glm, test, type="response") > threshold
yhat2 = predict(fit.glm, test, type="response")

table(yhat2)
a <- data.frame(yhat2)
a$yhat <- data.frame(yhat)
