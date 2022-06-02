# In the previous challenge, we calculated a mean. In this challenge, we practice calculating a weighted mean.

#Given an array, , of  integers and an array, , representing the respective weights of 's elements, calculate and print the weighted mean of 's elements. Your answer should be rounded to a scale of  decimal place 

# Complete the 'weightedMean' function below.
#
# The function accepts following parameters:
#  1. INTEGER_ARRAY X
#  2. INTEGER_ARRAY W
#
# OUTPUT: Print the weighted mean on a new line. Your answer should be rounded to a scale of 1decimal place.

weightedMean <- function(X, W) {
    # Write your code here
    sum(X*W)/sum(W)
}

stdin <- file('stdin')
open(stdin)

n <- as.integer(trimws(readLines(stdin, n = 1, warn = FALSE), which = "both"))
vals <- strsplit(trimws(readLines(stdin, n = 1, warn = FALSE), which = "right"), " ")[[1]]
vals <- as.integer(vals)

weights <- strsplit(trimws(readLines(stdin, n = 1, warn = FALSE), which = "right"), " ")[[1]]
weights <- as.integer(weights)

require(dplyr)
weightedMean(vals, weights) %>%
  round(digits=1)  %>%
  format(nsmall=1) %>%
  cat()

close(stdin)
