#!/usr/bin/env ruby

def is_palindrome(n)
  tmp = n
  r = 0

  while tmp != 0
    r *= 10
    r = r + tmp % 10
    tmp /= 10
  end

  r == n
end

def largest_palindrome(digits)
  largest = 0
  max = 10 ** digits - 1
  min = 10 ** (digits - 1)
  a = max

  while a >= min
    b = max

    while b >= a
      n = a * b
      break if n <= largest
      largest = n if is_palindrome(n)

      b -= 1
    end
    a -= 1
  end

  largest
end

print largest_palindrome(3) , "\n"
