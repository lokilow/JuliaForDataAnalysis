# Julia for Data Analysis

## Bogumił Kamiński, Daniel Kaszyński

# Chapter 3

# Problems

### Exercise 1

Check what methods does the `repeat` function have.
Are they all covered in help for this function?

[Solution](answers/03-01.md)


### Exercise 2

Write a function `fun2` that takes any vector and returns the difference between
the largest and the smallest element in this vector.

[Solution](answers/03-02.md)


### Exercise 3

Generate a vector of one million random numbers from `[0, 1]` interval.
Check what is a faster way to get a maximum and minimum element in it. One
option is by using the `maximum` and `minimum` functions and the other is by
using the `extrema` function.

[Solution](answers/03-03.md)


### Exercise 4

Assume you have accidentally typed `+x = 1` when wanting to assign `1` to
variable `x`. What effects can this operation have?

[Solution](answers/03-04.md)


### Exercise 5

What is the result of calling the `subtypes` on `Union{Bool, Missing}` and why?

[Solution](answers/03-05.md)


### Exercise 6

Define two identical anonymous functions `x -> x + 1` in global scope? Do they
have the same type?

[Solution](answers/03-06.md)


### Exercise 7

Define the `wrap` function taking one argument `i` and returning the anonymous
function `x -> x + i`. Is the type of such anonymous function the same across
calls to `wrap` function?

[Solution](answers/03-07.md)


### Exercise 8

You want to write a function that accepts any `Integer` except `Bool` and returns
the passed value. If `Bool` is passed an error should be thrown.

[Solution](answers/03-08.md)


### Exercise 9

The `@time` macro measures time taken by an expression run and prints it,
but returns the value of the expression.
The `@elapsed` macro works differently - it does not print anything, but returns
time taken to evaluate an expression. Test the `@elapsed` macro by to see how
long it takes to shuffle a vector of one million floats. Use the `shuffle` function
from `Random` module.

[Solution](answers/03-09.md)


### Exercise 10

Using the `@btime` macro benchmark the time of calculating the sum of one million
random floats.

[Solution](answers/03-10.md)
