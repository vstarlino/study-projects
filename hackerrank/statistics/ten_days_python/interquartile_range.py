'''
# Objective
 In this challenge, we practice calculating the interquartile range. We recommend you complete the Quartiles challenge before attempting this problem.

# Task
The interquartile range of an array is the difference between its first and third quartiles (i.e., Q3-Q1).

# Function Description

Complete the interQuartile function in the editor below.

interQuartile has the following parameters:
- int values[n]: an array of integers
- int freqs[n]:  occurs  times in the array to analyze

# Prints

float: the interquartile range to 1 place after the decimal

Input Format
The first line contains an integer, n, the number of elements in arrays values and freqs.
The second line contains n space-separated integers describing the elements of array values.
The third line contains n space-separated integers describing the elements of array freqs.

Output Format
Print the interquartile range for the expanded data set on a new line. Round the answer to a scale of 1 decimal place (i.e., 12.3 format).
'''

from statistics import median

n = int(input())
values = list(map(int, input().split()))
freq = list(map(int, input().split()))

S=[]
for i in range(n):
    S += [values[i]] * freq[i]
    S.sort()

freq_s = sum(freq)
if freq_s %2 != 0:
    q1 = median(S[ :freq_s // 2])
    q3 = median(S[(freq_s+1) // 2: ])
else:
    q1 = int(median(S[ :freq_s // 2]))
    q3 = int(median(S[freq_s // 2: ]))
 
print(round(float(q3-q1), 1))