# Chapter 2 exercises

## Exercise 1
x = [1, 2]
y = x
y[1] = 10
x[1]    # 10, because julia uses references and happily mutates data> It binds the same vlaue to both x and y

## Exercise 2
# help?> ⚡
# says to type `\:zap:<tab>`
⚡ = 1

## Exercise 3
x = 0.0
for i in 1:7_000_000
    global x += 1/7
end
x /= 1_000_000
x
print(x)
# x = 0.9999999999242748
# this is below 1 because of float math
# the float representatio of 1/7 is less than the rational 1/7
print(1/7)
print(big(1/7))
print(1/big(7))
## Exercise 4
# Matrix{Bool} (alias for Array{Bool, 2})

# Exercise 5
