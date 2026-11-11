# Julia for Data Analysis

## Bogumił Kamiński, Daniel Kaszyński

# Chapter 6

# Problems

### Exercise 1

Interpolate the expression `1 + 2` into a string `"I have apples worth 3USD"`
(replace `3` by a proper interpolation expression) and replace `USD` by `$`.

[Solution](answers/06-01.md)


### Exercise 2

Download the file `https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data`
as `iris.csv` to your local folder.

[Solution](answers/06-02.md)


### Exercise 3

Write the string `"https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"`
in two lines so that it takes less horizontal space.

[Solution](answers/06-03.md)


### Exercise 4

Load data stored in `iris.csv` file into a `data` vector where each element
should be a named tuple of the form `(sl=1.0, sw=2.0, pl=3.0, pw=4.0, c="x")` if
the source line had data `1.0,2.0,3.0,4.0,x` (note that first four elements are parsed
as floats).

[Solution](answers/06-04.md)


### Exercise 5

The `data` structure is a vector of named tuples, change it to a named tuple
of vectors (with the same field names) and call it `data2`.

[Solution](answers/06-05.md)


### Exercise 6

Calculate the frequency of each type of Iris type (`c` field in `data2`).

[Solution](answers/06-06.md)


### Exercise 7

Create a vector `c2` that is derived from `c` in `data2` but holds inline strings,
vector `c3` that is a `PooledVector`, and vector `c4` that holds `Symbol`s.
Compare sizes of the three objects.

[Solution](answers/06-07.md)


### Exercise 8

You know that `refs` field of `PooledArray` stores an integer index of a given
value in it. Using this information make a scatter plot of `pl` vs `pw` vectors
in `data2`, but for each Iris type give a different point color (check the
`color` keyword argument meaning in the Plots.jl manual; you can use the
`plot_color` function).

[Solution](answers/06-08.md)


### Exercise 9

Type the following string `"a²=b² ⟺ a=b ∨ a=-b"` in your terminal and bind it to
`str` variable (do not copy paste the string, but type it).

[Solution](answers/06-09.md)


### Exercise 10

In the `str` string from exercise 9 find all matches of a pattern where `a`
is followed by `b` but there can be some characters between them.

[Solution](answers/06-10.md)
