# Stage 1: Data Extraction

To make the data sets smaller, we started by filtering only the relevant columns. In addition, we removed data points that did not have height or density data.

Finally, we transferred that data to an HDF5 file for more efficient reading/querying.

Code for this section: cleaner.py remove_empty.R to_hdf.py

We decided that it would be best to look at the 10 most common species of trees. We created a new data table with only those species.

```python
> import pandas

> df = pandas.read_hdf("TREE.h5", "data")

> common_trees = df["SPCD"].value_counts()[:10].index.tolist()
[131, 316, 611, 318, 802, 202, 746, 241, 12, 621]

```

```R
> TREE_COMMON <- TREE_CLEAN_V2[TREE_CLEAN_V2$SPCD %in% c(131, 316, 611, 318, 802, 202, 746, 241, 12, 621),]
> write.table(TREE_COMMON,file="scratch/AITP2020-DS-Challenge/data/TREE_COMMON.csv",sep=",")
```

The analysis was done with the new data in mind.
