[a, b] = [0, 1] #initializing values
sum = 0
while b < 4000000
    sum  = sum + b if b % 2 == 0 #adding even values
    [a, b] = [b, a + b] #swapping values to find next number
console.log sum

