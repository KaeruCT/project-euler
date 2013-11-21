#!/usr/bin/env python2

f = open('numbers.txt', 'r')
numbers = [int(i) for i in f.readlines()]
result = str(sum(numbers))[:10]

print result
