'''PE4
http://projecteuler.net/problem=4
A palindromic number reads the same both ways. The largest palindrome
made from the product of two 2-digit numbers is 9009 = 91  99.

Find the largest palindrome made from the product of two 3-digit numbers.
'''

isPal = (n) ->
    #convert num to string,split it reverse it join it
    #then check whether it's palindrome
    n is Number(n.toString().split('').reverse().join(''))
r=0
for i in [999..100]
    for j in [999..100]
        p = i*j
        r = p if isPal(p) and p >r
console.log r

