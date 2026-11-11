# Julia for Data Analysis

## Bogumił Kamiński, Daniel Kaszyński

# Chapter 2

# Problems

### Exercise 1

Consider the following code:
```
x = [1, 2]
y = x
y[1] = 10
```
What is the value of `x[1]` and why?

[Solution](answers/02-01.md)


### Exercise 2

How can you type `⚡ = 1`. Check if this operation succeeds and what is its result.

[Solution](answers/02-02.md)


### Exercise 3

What will be the value of variable `x` after running of the following code and why?
```
x = 0.0
for i in 1:7_000_000
    global x += 1/7
end
x /= 1_000_000
```

[Solution](answers/02-03.md)


### Exercise 4

Express the type `Matrix{Bool}` using `Array` type.

[Solution](answers/02-04.md)


### Exercise 5

Let `x` be a vector. Write code that prints an error if `x` is empty
(has zero elements)

[Solution](answers/02-05.md)


### Exercise 6

Write a function called `exec` that takes two values `x` and `y` and a function
accepting two arguments, call it `op` and returns `op(x, y)`. Make `+` to be
the default value of `op`.

[Solution](answers/02-06.md)


### Exercise 7

Write a function that calculates a sum of absolute values of values stored in
a collection passed to it.

[Solution](answers/02-07.md)


### Exercise 8

Write a function that swaps first and last element in an array in place.

[Solution](answers/02-08.md)


### Exercise 9

Write a loop in global scope that calculates the sum of cubes of numbers from
`1` to `10^6`. Next use the `sum` function to perform the same computation.
What is the difference in timing of these operations?

[Solution](answers/02-09.md)


### Exercise 10

Explain the value of the result of summation obtained in exercise 9.

[Solution](answers/02-10.md)
