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
# my naive solution
err_on_empty(x::Vector) = if length(x) == 0; error("Empty Vector!") end

# better
x = []
isempty(x) && throw(ArgumentError("x is not allowed to be empty"))

## Exercise 6
function exec(x, y, op=+)
    return op(x, y)
end
exec2(x, y; op=+) = op(x, y)

exec(1,2)
exec2(1,2;op=*)

## Exercise 7
function sum_magnitudes(arr)
    sum((x) -> abs(x), arr)
end

sum_magnitudes([-1,10,-100])

# better
sumabs(x) = sum(abs, x)

## Exercise 8
function swap_first_and_last!(arr)
    first = arr[1]
    arr[1] = arr[end]
    arr[end] = first
    return arr
end

# begin is technically safer if some collection uses 0-based indexing :/
function swap!(x)
    if length(x) > 1
        x[begin], x[end] = x[end], x[begin]
    end
    return x
end

## Exercise 9
global sum_of_cubes = 0
@time for i in 1:10^6
    global sum_of_cubes += i^3
end
print(sum_of_cubes)
#   0.161373 seconds (5.00 M allocations: 91.537 MiB, 3.71% gc time)
# -8222430735553051648



@time sum((x) -> x^3, 1:10^6)
#   0.017621 seconds (30.18 k allocations: 1.591 MiB, 99.44% compilation time)
# -8222430735553051648


# Way faster to avoid global scope!
sum3(n) = sum(x -> x^3, 1:n)

@time sum3(10^6)
# 0.000010 seconds
# -8222430735553051648


# and with an inner loop
function sum3loop(n)
    s = 0
    for i in 1:n
        s += i^3
    end
    return s
end
@time sum3loop(10^6)
# 0.000000 seconds
# -8222430735553051648
# why is this so fast???

## Exercise 10
# We get a negative number because it overflows past a 64 bit integer
typemax(Int) # 9223372036854775807

@time (sum(x -> big(x)^3, 1:10^6))
# 0.254681 seconds (7.03 M allocations: 186.554 MiB, 42.60% gc time, 6.59% compilation time)
# 250000500000250000000000
