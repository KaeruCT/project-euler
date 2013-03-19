#!/usr/bin/env ruby

num = 2**1000
sum = 0

while num > 0
    sum += num%10
    num /= 10
end

print sum
