# Julia for Data Analysis

## Bogumił Kamiński, Daniel Kaszyński

# Chapter 7

# Problems

### Exercise 1

Random.org provides a service that returns random numbers. One of the ways
how you can use it is by sending HTTP GET requests. Here is an example request:

> https://www.random.org/integers/?num=10&min=1&max=6&col=1&base=10&format=plain&rnd=new

If you want to understand all the parameters please check their meaning
[here](https://www.random.org/clients/http/).

For us it is enough that this request generates 10 random integers in the range
from 1 to 6. Run this query in Julia and parse the result.

[Solution](answers/07-01.md)


### Exercise 2

Write a function that tries to parse a string as an integer.
If it succeeds it should return the integer, otherwise it should return `0`
but print error message.

[Solution](answers/07-02.md)


### Exercise 3

Create a matrix containing truth table for `&&` operation including `missing`.
If some operation errors store `"error"` in the table. As an extra feature (this
is harder so you can skip it) in each cell store both inputs and output to make
reading the table easier.

[Solution](answers/07-03.md)


### Exercise 4

Take a vector `v = [1.5, 2.5, missing, 4.5, 5.5, missing]` and replace all
missing values in it by the mean of the non-missing values.

[Solution](answers/07-04.md)


### Exercise 5

Take a vector `s = ["1.5", "2.5", missing, "4.5", "5.5", missing]` and parse
strings stored in it as `Float64`, while keeping `missing` values unchanged.

[Solution](answers/07-05.md)


### Exercise 6

Print to the terminal all days in January 2023 that are Mondays.

[Solution](answers/07-06.md)


### Exercise 7

Compute the dates that are one month later than January 15, 2020, February 15
2020, March 15, 2020, and April 15, 2020. How many days pass during this one
month. Print the results to the screen?

[Solution](answers/07-07.md)


### Exercise 8

Parse the following string as JSON:
```
str = """
[{"x":1,"y":1},
 {"x":2,"y":4},
 {"x":3,"y":9},
 {"x":4,"y":16},
 {"x":5,"y":25}]
"""
```
into a `json` variable.

[Solution](answers/07-08.md)


### Exercise 9

Extract from the `json` variable from exercise 8 two vectors `x` and `y`
that correspond to the fields stored in the JSON structure.
Plot `y` as a function of `x`.

[Solution](answers/07-09.md)


### Exercise 10

Given a vector `m = [missing, 1, missing, 3, missing, missing, 6, missing]`.
Use linear interpolation for filling missing values. For the extreme values
use nearest available observation (you will need to consult Impute.jl
documentation to find all required functions).

[Solution](answers/07-10.md)
