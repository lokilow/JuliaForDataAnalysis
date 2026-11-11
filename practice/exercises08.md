# Julia for Data Analysis

## Bogumił Kamiński, Daniel Kaszyński

# Chapter 8

# Problems

### Exercise 1

Read data stored in a gzip-compressed file `example8.csv.gz` into a `DataFrame`
called `df`.

[Solution](answers/08-01.md)


### Exercise 2

Get number of rows, columns, column names and summary statistics of the
`df` data frame from exercise 1.

[Solution](answers/08-02.md)


### Exercise 3

Make a plot of `number` against `square` columns of `df` data frame.

[Solution](answers/08-03.md)


### Exercise 4

Add a column to `df` data frame with name `name string` containing string
representation of numbers in column `number`, i.e.
`["one", "two", "three", "four"]`.

[Solution](answers/08-04.md)


### Exercise 5

Check if `df` contains column `square2`.

[Solution](answers/08-05.md)


### Exercise 6

Extract column `number` from `df` and empty it (recall `empty!` function
discussed in chapter 4).

[Solution](answers/08-06.md)


### Exercise 7

In `Random` module the `randexp` function is defined that samples numbers
from exponential distribution with scale 1.
Draw two 100,000 element samples from this distribution store them
in `x` and `y` vectors. Plot histograms of maximum of pairs of sampled values
and sum of vector `x` and half of vector `y`.

[Solution](answers/08-07.md)


### Exercise 8

Using vectors `x` and `y` from exercise 7 create the `df` data frame storing them,
and maximum of pairs of sampled values and sum of vector `x` and half of vector `y`.
Compute all standard descriptive statistics of columns of this data frame.

[Solution](answers/08-08.md)


### Exercise 9

Store the `df` data frame from exercise 8 in Apache Arrow file and CSV file.
Compare the size of created files using the `filesize` function.

[Solution](answers/08-09.md)


### Exercise 10

Write the `df` data frame into SQLite database. Next find information about
tables in this database. Run a query against a table representing the `df` data
frame to calculate the mean of column `x`. Does it match the result we got in
exercise 8?

[Solution](answers/08-10.md)
