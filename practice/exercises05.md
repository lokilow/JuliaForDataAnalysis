# Julia for Data Analysis

## Bogumił Kamiński, Daniel Kaszyński

# Chapter 5

# Problems

### Exercise 1

Create a matrix containing truth table for `&&` and `||` operations.

[Solution](answers/05-01.md)


### Exercise 2

The `issubset` function checks if one collection is a subset of other
collection.

Now take a range `4:6` and check if it is a subset of ranges `4+k:4-k` for
`k` varying from `1` to `3`. Store the result in a vector.

[Solution](answers/05-02.md)


### Exercise 3

Write a function that accepts two vectors and returns `true` if they have equal
length and otherwise returns `false`.

[Solution](answers/05-03.md)


### Exercise 4

Consider the vectors `x = [1, 2, 1, 2, 1, 2]`,
`y = ["a", "a", "b", "b", "b", "a"]`, and `z = [1, 2, 1, 2, 1, 3]`.
Calculate their Adjusted Mutual Information using scikit-learn.

[Solution](answers/05-04.md)


### Exercise 5

Using Adjusted Mutual Information function from exercise 4 generate
a pair of random vectors of length 100 containing integer numbers from the
range `1:5`. Repeat this exercise 1000 times and plot a histogram of AMI.
Check in the documentation of the `rand` function how you can draw a sample
from a collection of values.

[Solution](answers/05-05.md)


### Exercise 6

Adjust the code from exercise 5 but replace first 50 elements of each vector
with zero. Repeat the experiment.

[Solution](answers/05-06.md)


### Exercise 7

Write a function that takes a vector of integer values and returns a dictionary
giving information how many times each integer was present in the passed vector.

Test this function on vectors `v1 = [1, 2, 3, 2, 3, 3]`, `v2 = [true, false]`,
and `v3 = 3:5`.

[Solution](answers/05-07.md)


### Exercise 8

Write code that creates a `Bool` diagonal matrix of size 5x5.

[Solution](answers/05-08.md)


### Exercise 9

Write a code comparing performance of calculation of sum of logarithms of
elements of a vector `1:100` using broadcasting and the `sum` function vs only
the `sum` function taking a function as a first argument.

[Solution](answers/05-09.md)


### Exercise 10

Create a dictionary in which for each number from `1` to `10` you will store
a vector of its positive divisors. You can check the reminder of division
of two values using the `rem` function.

Additionally (not covered in the book), you can drop elements
from a comprehension if you add an `if` clause after the `for` clause, for
example to keep only odd numbers from range `1:10` do:

```
julia> [i for i in 1:10 if isodd(i)]
5-element Vector{Int64}:
 1
 3
 5
 7
 9
```

You can populate a dictionary by passing a vector of pairs to it (not covered in
the book), for example:

```
julia> Dict(["a" => 1, "b" => 2])
Dict{String, Int64} with 2 entries:
  "b" => 2
  "a" => 1
```

[Solution](answers/05-10.md)
