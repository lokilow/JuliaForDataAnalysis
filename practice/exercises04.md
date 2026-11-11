# Julia for Data Analysis

## Bogumił Kamiński, Daniel Kaszyński

# Chapter 4

# Problems

### Exercise 1

Create a matrix of shape 2x3 containing numbers from 1 to 6 (fill the matrix
columnwise with consecutive numbers). Next calculate sum, mean and standard
deviation of each row and each column of this matrix.

[Solution](answers/04-01.md)


### Exercise 2

For each column of the matrix created in exercise 1 compute its range
(i.e. the difference between maximum and minimum element stored in it).

[Solution](answers/04-02.md)


### Exercise 3

This is data for car speed (mph) and distance taken to stop (ft)
from Ezekiel, M. (1930) Methods of Correlation Analysis. Wiley.

```
speed  dist
    4     2
    4    10
    7     4
    7    22
    8    16
    9    10
   10    18
   10    26
   10    34
   11    17
   11    28
   12    14
   12    20
   12    24
   12    28
   13    26
   13    34
   13    34
   13    46
   14    26
   14    36
   14    60
   14    80
   15    20
   15    26
   15    54
   16    32
   16    40
   17    32
   17    40
   17    50
   18    42
   18    56
   18    76
   18    84
   19    36
   19    46
   19    68
   20    32
   20    48
   20    52
   20    56
   20    64
   22    66
   23    54
   24    70
   24    92
   24    93
   24   120
   25    85
```

Load this data into Julia (this is part of the exercise) and fit a linear
regression where speed is a feature and distance is target variable.

[Solution](answers/04-03.md)


### Exercise 4

Plot the data loaded in exercise 4. Additionally plot the fitted regression
(you need to check Plots.jl documentation to find a way to do this).

[Solution](answers/04-04.md)


### Exercise 5

A simple code for calculation of Fibonacci numbers for positive
arguments is as follows:

```
fib(n) =n < 3 ? 1 : fib(n-1) + fib(n-2)
```

Using the BenchmarkTools.jl package measure runtime of this function for
`n` ranging from `1` to `20`.

[Solution](answers/04-05.md)


### Exercise 6

Improve the speed of code from exercise 5 by using a dictionary where you
store a mapping of `n` to `fib(n)`. Measure the performance of this function
for the same range of values as in exercise 5.

[Solution](answers/04-06.md)


### Exercise 7

Create a vector containing named tuples representing elements of a 4x4 grid.
So the first element of this vector should be `(x=1, y=1)` and last should be
`(x=4, y=4)`. Store the vector in variable `v`.

[Solution](answers/04-07.md)


### Exercise 8

The `filter` function allows you to select some values of an input collection.
Check its documentation first. Next, use it to keep from the vector `v` from
exercise 7 only elements whose sum is even.

[Solution](answers/04-08.md)


### Exercise 9

Check the documentation of the `filter!` function. Perform the same operation
as asked in exercise 8 but using `filter!`. What is the difference?

[Solution](answers/04-09.md)


### Exercise 10

Write a function that takes a number `n`. Next it generates two independent
random vectors of length `n` and returns their correlation coefficient.
Run this function `10000` times for `n` equal to `10`, `100`, `1000`,
and `10000`.
Create a plot with four histograms of distribution of computed Pearson
correlation coefficient. Check in the Plots.jl package which function can be
used to plot histograms.

[Solution](answers/04-10.md)
