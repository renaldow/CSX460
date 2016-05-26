

install.packages("fma")
library(fma)
library("caret")
library(magrittr)

data("hsales")

plot(hsales)

forecast(hsales) %>% plot
?hsales
?forecast

acf(hsales)
