'''
# Objective
 In this challenge, we practice calculating quartiles. Check out the Tutorial tab for learning materials and an instructional video!

# Task
Given an array, arr, of n integers, calculate the respective first quartile (Q1), second quartile (Q2), and third quartile (Q3). It is guaranteed that Q1, Q2, and Q3 are integers.
'''

from statistics import median

n = int(input())
values = sorted(list(map(int, input().split())))

if n %2 != 0:
    q1 = median(values[ :n // 2])
    q3 = median(values[(n+1) // 2: ])
else:
    q1 = int(median(values[ :n // 2]))
    q3 = int(median(values[n // 2: ]))
 

print(round(q1))
print(round(median(values)))
print(round(q3))