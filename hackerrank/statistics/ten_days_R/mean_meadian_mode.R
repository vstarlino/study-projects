# In this challenge, we practice calculating the mean, median, and mode.

# Lib
require(dplyr)

# Given an array, , of  integers, calculate and print the respective mean, median, and mode on separate lines. If your array contains more than one modal value, choose the numerically smallest one.

#The first line contains an integer, , the number of elements in the array. The second line contains  space-separated integers that describe the array's elements. (STDIN)

nx <- scan("stdin")
n <- nx[1]
len <- n+1
x <- nx[c(2:len)] %>%
    as.integer()

# Print the mean on the first line to a scale of  decimal place.
# Print the median on a new line, to a scale of  decimal place.
# Print the mode on a new line. If more than one such value exists, print the numerically smallest one.

mean(x) %>%
 cat("\n")
 
median(x) %>%
    cat("\n")
    
Mode <- function(data) {
  freq = table(as.vector(data))
  
  if(max(freq) != length(names(freq)[freq == max(freq)])) { # Compares whether the highest frequency is unique
    names(freq)[freq == max(freq)][1] # Smallest one
  }else{
    names(freq)[freq == max(freq)]
  }
}

Mode(x) %>%
    cat("\n")
