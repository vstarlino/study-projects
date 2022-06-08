'''
# Objective
 Objective
In this challenge, we practice calculating standard deviation. Check out the Tutorial tab for learning materials and an instructional video!

# Task
Given an array, arr, of n integers, calculate and print the standard deviation. Your answer should be in decimal form, rounded to a scale of  decimal place (i.e., 12.3 format). An error margin of +-0.1 will be tolerated for the standard deviation.

# Function Description
Complete the stdDev function in the editor below.
stdDev has the following parameters:
- int arr[n]: an array of integers

Prints
- float: the standard deviation to 1 place after the decimal

Input Format

The first line contains an integer, , denoting the size of arr.
The second line contains  space-separated integers that describe .
'''

from statistics import pstdev

n = int(input())
values = list(map(int, input().split()))

std = pstdev(values)
print(round(std, 1))