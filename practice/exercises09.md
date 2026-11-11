# Julia for Data Analysis

## Bogumił Kamiński, Daniel Kaszyński

# Chapter 9

# Problems

In this problemset we will use the `puzzles.csv` file that was
created in chapter 8. Please first load it into your Julia
session using the commands:

```
using CSV
using DataFrames
puzzles = CSV.read("puzzles.csv", DataFrame);
```

### Exercise 1

Create `matein2` data frame that will have only puzzles that have `"mateIn2"`
in the `Themes` column.
Use the `contains` function (check its documentation first).

[Solution](answers/09-01.md)


### Exercise 2

What is the fraction of puzzles that are mate in 2 in relation to all puzzles
in the `puzzles` data frame?

[Solution](answers/09-02.md)


### Exercise 3

Create `small` data frame that holds first 10 rows of `matein2` data frame
and columns `Rating`, `RatingDeviation`, and `NbPlays`.

[Solution](answers/09-03.md)


### Exercise 4

Iterate rows of `small` data frame and print the ratio of
`RatingDeviation` and `NbPlays` for each row.

[Solution](answers/09-04.md)


### Exercise 5

Get names of columns from the `matein2` data frame that end with `n` (ignore case).

[Solution](answers/09-05.md)


### Exercise 6

Write a function `collatz` that runs the following process. Start with a
positive number `n`. If it is even divide it by two. If it is odd multiply
it by 3 and add one. The function should return the number of steps needed to
reach 1.

Create a `d` dictionary that maps number of steps needed to a list of numbers from
the range `1:100` that required this number of steps.

[Solution](answers/09-06.md)


### Exercise 7

Using the `d` dictionary make a scatter plot of number of steps required
vs average value of numbers that require this number of steps.

[Solution](answers/09-07.md)


### Exercise 8

Repeat the process from exercises 6 and 7, but this time use a data frame
and try to write an appropriate expression using the `combine` and `groupby`
functions (as it was explained in the last part of chapter 9). This time
perform computations for numbers ranging from one to one million.

[Solution](answers/09-08.md)


### Exercise 9

Set seed of random number generator to `1234`. Draw 100 random points
from the interval `[0, 1]`. Store this vector in a data frame as `x` column.
Now compute `y` column using a formula `4 * (x - 0.5) ^ 2`.
Add random noise to column `y` that has normal distribution with mean 0 and
standard deviation 0.25. Call this column `z`.
Make a scatter plot with `x` on x-axis and `y` and `z` on y-axis.

[Solution](answers/09-09.md)


### Exercise 10

Add a line of LOESS regression of `x` explaining `z` plot to figure produced in exercise 10.

[Solution](answers/09-10.md)
