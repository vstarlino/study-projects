# In this challenge, we practice calculating the mean, median, and mode.

# Given an array, X, of N integers, calculate and print the respective mean, median, and mode on separate lines. If your array contains more than one modal value, choose the numerically smallest one.

# The first line contains an integer, , the number of elements in the array. The second line contains  space-separated integers that describe the array's elements. (STDIN)

# Pacotes
import numpy as np
from scipy import stats

n = input()

numbers = []
numbers = input().split(" ")
x = list(map(int, numbers))

# Mean, median and mode
print(np.mean(x))
print(np.median(x))
print(int(stats.mode(x)[0]))