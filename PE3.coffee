'''PE 3
http://projecteuler.net/problem=3
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?'''
#checking whether a number is prime
isprime = (n) ->
    return false if n % 2 == 0
    p = 1
    for i in [3..Math.ceil(Math.sqrt(n))] #range upto ceil of square root
        #of number
        p = p * n % i
        return false if p == 0
    return true
m = 600851475143
r = 0
for i in [3..Math.ceil(Math.sqrt(m))]
    if m % i == 0 and isprime(i)
        r = i if i > r
console.log r

