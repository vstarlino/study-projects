# In the previous challenge, we calculated a mean. In this challenge, we practice calculating a weighted mean.

# Given an array, , of  integers and an array, , representing the respective weights of 's elements, calculate and print the weighted mean of 's elements.
# Your answer should be rounded to a scale of  decimal place 

# Complete the 'weightedMean' function below.
#
# The function accepts following parameters:
#  1. INTEGER_ARRAY X
#  2. INTEGER_ARRAY W
#
# OUTPUT: Print the weighted mean on a new line. Your answer should be rounded to a scale of 1decimal place.

n = int(input())
vals = list(map(int, input().rstrip().split()))
weights = list(map(int, input().rstrip().split()))


wm = 0
for i in range(n):
   wm += (vals[i]*weights[i])/sum(weights)


print(round(wm, 1))