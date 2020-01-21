# Clear workspace & load packages ----
rm(list=ls(all=TRUE))
library(tidyverse)

body <- read.table("body.txt", header = TRUE)
summary(body)

# Question 1 ----
median(body$age)
range(body$age)

# Question 2 ----
var(body$height)

# Question 3 ----
sqrt(var(body$weight))

# Question 4 ----
cor(body$height, body$weight)

# Question 5 ----
sqrt(var(body$weight))/sqrt(260+247)

# Question 6 ----
t.test(height ~ gender, data = body)


plot(data = body, weight ~ height)
slr1 <- lm(data = body, weight ~ height)
summary(slr1)
abline(slr1)
