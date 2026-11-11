# Julia for Data Analysis

## Bogumił Kamiński, Daniel Kaszyński

# Chapter 12

# Problems

### Exercise 1

The https://go.dev/dl/go1.19.2.src.tar.gz link contains source code of
Go language version 19.2. As you can check on its website its SHA-256
is `sha = "2ce930d70a931de660fdaf271d70192793b1b240272645bf0275779f6704df6b"`.
Download this file and check if it indeed has this checksum.
You might need to read documentation of `string` and `join` functions.

[Solution](answers/12-01.md)


### Exercise 2

Download the file http://snap.stanford.edu/data/deezer_ego_nets.zip
that contains the ego-nets of Eastern European users collected from the music
streaming service Deezer in February 2020. Nodes are users and edges are mutual
follower relationships.

From the file extract deezer_edges.json and deezer_target.csv files and
save them to disk.

[Solution](answers/12-02.md)


### Exercise 3

Load deezer_edges.json and deezer_target.csv files to Julia.
The JSON file should be loaded as JSON3.jl object `edges_json`.
The CSV file should be loaded into a data frame `target_df`.

[Solution](answers/12-03.md)


### Exercise 4

Check that keys in the `edges_json` are in the same order as `id` column
in `target_df`.

[Solution](answers/12-04.md)


### Exercise 5

From every value stored in `edges_json` create a graph representing
ego-net of the given node. Store these graphs in a vector that will make the
`egonet` column of in the `target_df` data frame.

[Solution](answers/12-05.md)


### Exercise 6

Ego-net in our data set is a subgraph of a full Deezer graph where for some
node all its neighbors are included, but also it contains all edges between the
neighbors.
Therefore we expect that diameter of every ego-net is at most 2 (as every
two nodes are either connected directly or by a common friend).
Check if this is indeed the case. Use the `diameter` function.

[Solution](answers/12-06.md)


### Exercise 7

For each ego-net find a central node that is connected to every other node
in this network. Use the `degree` and `findall` functions to achieve this.
Add `center` column with numbers of nodes that are connected to all other
nodes in the ego-net to `target_df` data frame.

Next add a column `center_len` that gives the number of such nodes.

Check how many times different numbers of center nodes are found.

[Solution](answers/12-07.md)


### Exercise 8

Add the following ego-net features to the `target_df` data frame:
* `size`: number of nodes in ego-net
* `mean_degree`: average node degree in ego-net

Check mean values of these two columns by `target` column.

[Solution](answers/12-08.md)


### Exercise 9

Continuing to work with `target_df` data frame create a logistic regression
explaining `target` by `size` and `mean_degree`.

[Solution](answers/12-09.md)


### Exercise 10

Continuing to work with `target_df` create a scatterplot where `size` will be on
one axis and `mean_degree` rounded to nearest integer on the other axis.
Plot the mean of `target` for each point being a combination of `size` and
rounded `mean_degree`.

Additionally fit a LOESS model explaining `target` by `size`. Make a prediction
for values in range from 5% to 95% quantile (to concentrate on typical values
of size).

[Solution](answers/12-10.md)
