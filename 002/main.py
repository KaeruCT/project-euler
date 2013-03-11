#!/usr/bin/env python2

sum = 0
prev = 0
n = 1

while n < 4000000:
	n += prev
	prev = n - prev

	if n % 2 == 0:
		sum += n

print sum
