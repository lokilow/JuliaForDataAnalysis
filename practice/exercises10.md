# Julia for Data Analysis

## Bogumił Kamiński, Daniel Kaszyński

# Chapter 10

# Problems

### Exercise 1

Generate a random matrix `mat` having size 5x4 and all elements drawn
independently and uniformly from the [0,1[ interval.
Create a data frame using data from this matrix using auto-generated
column names.

[Solution](answers/10-01.md)


### Exercise 2

Now, using matrix `mat` create a data frame with randomly generated
column names. Use the `randstring` function from the `Random` module
to generate them. Store this data frame in `df` variable.

[Solution](answers/10-02.md)


### Exercise 3

Create a new data frame, taking `df` as a source that will have the same
columns but its column names will be `y1`, `y2`, `y3`, `y4`.

[Solution](answers/10-03.md)


### Exercise 4

Create a dictionary holding `column_name => column_vector` pairs
using data stored in data frame `df`. Save this dictionary in variable `d`.

[Solution](answers/10-04.md)


### Exercise 5

Create a data frame back from dictionary `d` from exercise 4. Compare it
with `df`.

[Solution](answers/10-05.md)


### Exercise 6

For data frame `df` compute the dot product between all pairs of its columns.
Use the `dot` function from the `LinearAlgebra` module.

[Solution](answers/10-06.md)


### Exercise 7

Given two data frames:

```
julia> df1 = DataFrame(a=1:2, b=11:12)
2×2 DataFrame
 Row │ a      b
     │ Int64  Int64
─────┼──────────────
   1 │     1     11
   2 │     2     12

julia> df2 = DataFrame(a=1:2, c=101:102)
2×2 DataFrame
 Row │ a      c
     │ Int64  Int64
─────┼──────────────
   1 │     1    101
   2 │     2    102
```

vertically concatenate them so that only columns that are present in both
data frames are kept. Check the documentation of `vcat` to see how to
do it.

[Solution](answers/10-07.md)


### Exercise 8

Now append to `df1` table `df2`, but add only the columns from `df2` that
are present in `df1`. Check the documentation of `append!` to see how to
do it.

[Solution](answers/10-08.md)


### Exercise 9

Create a `circle` data frame, using the `push!` function that will store
1000 samples of the following process:
* draw `x` and `y` uniformly and independently from the [-1,1[ interval;
* compute a binary variable `inside` that is `true` if `x^2+y^2 < 1`
  and is `false` otherwise.

Compute summary statistics of this data frame.

[Solution](answers/10-09.md)


### Exercise 10

Create a scatterplot of `circle` data frame where its `x` and `y` axis
will be the plotted points and `inside` variable will determine the color
of the plotted point.

[Solution](answers/10-10.md)
