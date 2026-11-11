# Julia for Data Analysis

## Bogumił Kamiński, Daniel Kaszyński

# Chapter 13

# Problems

### Exercise 1

Download
https://archive.ics.uci.edu/ml/machine-learning-databases/00615/MushroomDataset.zip
archive and extract primary_data.csv and secondary_data.csv files from it.
Save the files to disk.

[Solution](answers/13-01.md)


### Exercise 2

Load primary_data.csv into the `primary` data frame.
Load secondary_data.csv into the `secondary` data frame.
Describe the contents of both data frames.

[Solution](answers/13-02.md)


### Exercise 3

Start with `primary` data. Note that columns starting from column 4 have
their data encoded using vector notation, but they have been read-in as strings.
Convert these columns to hold proper vectors. Note that some columns have
`missing` values. Most of the columns hold nominal data, but three columns,
i.e. `cap-diameter`, `stem-height`, and `stem-width` have numeric data. These
should be parsed as vectors storing numeric values. After parsing, put these
three columns just after `class` column in the `parsed_primary` data frame.

Check `renamecols` keyword argument of `select` to
avoid renaming of the produced columns.

[Solution](answers/13-03.md)


### Exercise 4

In `parsed_primary` data frame find all pairs of mushrooms (rows) that might be
confused and have a different class, using the information about them we have
(so all information except their family, name, and class).

Use the following rules:
* if for some pair of mushrooms the data in some column for either of them is
  `missing` then skip matching on this column; for numeric columns if there
  is only one value in a vector then treat it as `missing`;
* otherwise:
  - for numeric columns check if there is an overlap in the interval
    specified by the min and max values for the range passed;
  - for nominal columns check if the intersection of nominal values is nonempty.

For each found pair print to the screen the row number, family, name, and class.

[Solution](answers/13-04.md)


### Exercise 5

Still using `parsed_primary` find what is the average probability of class being
`p` by `family`. Additionally add number of observations in each group. Sort
these results by the probability. Try using DataFramesMeta.jl to do this
exercise (this requirement is optional).

Store the result in `agg_primary` data frame.

[Solution](answers/13-05.md)


### Exercise 6

Now using `agg_primary` data frame collapse it so that for each unique `pr_p`
it gives us a total number of rows that had this probability and a tuple
of mushroom family names.

Optionally: try to display the produced table so that the tuple containing the
list of families for each group is not cropped (this will require large
terminal).

[Solution](answers/13-06.md)


### Exercise 7

From our preliminary analysis of `primary` data we see that `missing` value in
the primary data is non-informative, so in `secondary` data we should be
cautious when building a model if we allowed for missing data (in practice
if we were investigating some real mushroom we most likely would know its
characteristics).

Therefore as a first step drop in-place all columns in `secondary` data frame
that have missing values.

[Solution](answers/13-07.md)


### Exercise 8

Create a logistic regression predicting `class` based on all remaining features
in the data frame. You might need to check the `Term` usage in StatsModels.jl
documentation.

You will notice that for `stem-color` and `habitat` columns you get strange
estimation results (large absolute values of estimated parameters and even
larger standard errors). Explain why this happens by analyzing frequency tables
of these variables against `class` column.

[Solution](answers/13-08.md)


### Exercise 9

Add `class_p` column to `secondary` as a second column that will contain
predicted probability from the model created in exercise 8 of a given
observation having class `p`.

Print descriptive statistics of column `class_p` by `class`.

[Solution](answers/13-09.md)


### Exercise 10

Plot FPR-TPR ROC curve for our model and compute associated AUC value.

[Solution](answers/13-10.md)
