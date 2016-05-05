#?append
#?sample
sample(x, replace=TRUE) %>% mean
x %>% mean

x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
sapply(x, mean)

sapply(1:k, function(i) sample(x,replace=TRUE) %>% mean )
