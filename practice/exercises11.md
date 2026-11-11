# Julia for Data Analysis

## Bogumił Kamiński, Daniel Kaszyński

# Chapter 11

# Problems

### Exercise 1

Generate a data frame `df` having one column `x` consisting of 100,000 values
sampled from uniform distribution on [0, 1[ interval.
Serialize it to disk, and next deserialize. Check if the deserialized
object is the same as the source data frame.

[Solution](answers/11-01.md)


### Exercise 2

Add a column `n` to the `df` data frame that in each row will hold the
number of observations in column `x` that have distance less than `0.1` to
a value stored in a given row of `x`.

[Solution](answers/11-02.md)


### Exercise 3

Investigate visually how does `n` depend on `x` in data frame `df`.

[Solution](answers/11-03.md)


### Exercise 4

Someone has prepared the following test data for you:
```
teststr = """
"x","sinx"
0.139279,0.138829
0.456779,0.441059
0.344034,0.337287
0.140253,0.139794
0.848344,0.750186
0.977512,0.829109
0.032737,0.032731
0.702750,0.646318
0.422339,0.409895
0.393878,0.383772
"""
```

Load this data into `testdf` data frame.

[Solution](answers/11-04.md)


### Exercise 5

Check the accuracy of computations of sinus of `x` in `testdf`.
Print all rows for which the absolute difference is greater than `5e-7`.
In this case display `x`, `sinx`, the exact value of `sin(x)` and the absolute
difference.

[Solution](answers/11-05.md)


### Exercise 6

Group data in data frame `df` into buckets of 0.1 width and store the result in
`gdf` data frame (sort the groups). Use the `cut` function from
CategoricalArrays.jl to do it (check its documentation to learn how to do it).
Check the number of values in each group.

[Solution](answers/11-06.md)


### Exercise 7

Display the grouping keys in `gdf` grouped data frame. Show them as named tuples.
Check what would be the group order if you asked not to sort them.

[Solution](answers/11-07.md)


### Exercise 8

Compute average `n` for each group in `gdf`.

[Solution](answers/11-08.md)


### Exercise 9

Fit a linear model explaining `n` by `x` separately for each group in `gdf`.
Use the `\` operator to fit it (recall it from chapter 4).
For each group produce the result as named tuple having fields `α₀` and `αₓ`.

[Solution](answers/11-09.md)


### Exercise 10

Repeat exercise 9 but using the GLM.jl package. This time
extract the p-value for the slope of estimated coefficient for `x` variable.
Use the `coeftable` function from GLM.jl to get this information.
Check the documentation of this function to learn how to do it (it will be
easiest for you to first convert its result to a `DataFrame`).

[Solution](answers/11-10.md)
