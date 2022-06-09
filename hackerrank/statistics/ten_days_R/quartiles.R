
# Objective
# In this challenge, we practice calculating quartiles. Check out the Tutorial tab for learning materials and an instructional video!

# Task
# Given an array, arr, of n integers, calculate the respective first quartile (Q1), second quartile (Q2), and third quartile (Q3). It is guaranteed that Q1, Q2, and Q3 are integers.

nx <- scan("stdin")
n <- nx[1]
len <- n+1
values <- sort(as.integer(nx[c(2:len)]))


q2 <- median(values)
q1 <- median(values[values < q2])
q3 <- median(values[values > q2])

quartiles <- c(q1, q2, q3)
cat(quartiles, sep="\n")