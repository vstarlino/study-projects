# In this challenge, we practice calculating standard deviation.

#Given an array, arr, of n integers, calculate and print the standard deviation.
# Your answer should be in decimal form, rounded to a scale of 1 decimal place.


stdDev <- function(arr, n) {
    require(dplyr)
    # Print your answers to 1 decimal place within this function  
    mu <- mean(arr)
    mu
    darr <- sum((arr-mu)^2)
    darr
    std <- sqrt(darr/n)

    std %>%
        round(digits = 1) %>%
        format(nsmall = 1) %>%
        cat()
}

stdin <- file('stdin')
open(stdin)

n <- as.integer(trimws(readLines(stdin, n = 1, warn = FALSE), which = "both"))
vals <- strsplit(trimws(readLines(stdin, n = 1, warn = FALSE), which = "right"), " ")[[1]]
vals <- as.integer(vals)

stdDev(vals, n)

close(stdin)