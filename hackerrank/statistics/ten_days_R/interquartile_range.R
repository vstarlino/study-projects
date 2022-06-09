# Objective
# In this challenge, we practice calculating the interquartile range. We recommend you complete the Quartiles challenge before attempting this problem.

# Task
# The interquartile range of an array is the difference between its first and third quartiles (i.e., Q3-Q1).

# Function Description

# Complete the interQuartile function in the editor below.

# InterQuartile has the following parameters:
# - int values[n]: an array of integers
# - int freqs[n]:  occurs  times in the array to analyze

# Prints

# float: the interquartile range to 1 place after the decimal

# Input Format
# The first line contains an integer, n, the number of elements in arrays values and freqs.
# The second line contains n space-separated integers describing the elements of array values.
# The third line contains n space-separated integers describing the elements of array freqs.

# Output Format
# Print the interquartile range for the expanded data set on a new line. Round the answer to a scale of 1 decimal place (i.e., 12.3 format).

f = file("stdin")
open(f)

n = scan(f,nlines=1)
v = scan(f,nlines=1)
f = scan(f,nlines=1)

s <- sort(rep(v, f))

m <- length(s)/2
q1 <- median(s[1 : floor(m)])
q3 <- median(s[(ceiling(m)+1) : length(s) ])

iq <- q3-q1
cat(format(iq, nsmall=1))
