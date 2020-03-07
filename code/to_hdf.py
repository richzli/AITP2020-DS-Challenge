import pandas
df = pandas.read_csv("../data/TREE_NEW.csv")
df.to_hdf("TREE.h5", "data", mode="w", format="table")

