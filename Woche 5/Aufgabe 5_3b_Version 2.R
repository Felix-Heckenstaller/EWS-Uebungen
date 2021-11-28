library(ggplot2)
t <-0
g <-1
s <-1
test <- function(x) {exp(-((x-t)/s)^g)*((g/s)*(x-t)^(g-1))}

t <-0
g <-2
s <-1
test2 <- function(x) {exp(-((x-t)/s)^g)*((g/s)*(x-t)^(g-1))}

t <-0
g <-5
s <-1
test2 <- function(x) {exp(-((x-t)/s)^g)*((g/s)*(x-t)^(g-1))}

t <-0
g <-10
s <-1
test3 <- function(x) {exp(-((x-t)/s)^g)*((g/s)*(x-t)^(g-1))}

t <-0
g <-1
s <-2
test4 <- function(x) {exp(-((x-t)/s)^g)*((g/s)*(x-t)^(g-1))}

t <-0
g <-1
s <-5
test5 <- function(x) {exp(-((x-t)/s)^g)*((g/s)*(x-t)^(g-1))}

t <-0
g <-1
s <-10
test6 <- function(x) {exp(-((x-t)/s)^g)*((g/s)*(x-t)^(g-1))}

base <-ggplot() +xlim(0,100)

base+geom_function(fun=test)