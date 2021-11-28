library(ggplot2)
f <- ggplot(data.frame(x = c(0, 100)), aes(x))


t <-0
g <-1
s <-1
test <- function(x) {exp(-((x-t)/s)^g)*((g/s)*(x-t)^(g-1))}
f + stat_function(fun = test)


g <-10
s <-1
t <-0
test2 <- function(x) {exp(-((x-t)/s)^g)*((g/s)*(x-t)^(g-1))}
f + stat_function(fun = test2)