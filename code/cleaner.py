f = open("TREE.csv", "r")
rel_cols = [i for i in range(11)] + [13+i for i in range(6)] + [21, 110]

f_out = open("TREE_CLEAN.csv", "w")

for line in f:
    l = line.split(",")
    rc = [l[n] for n in rel_cols]
    f_out.write(",".join(rc) + "\n")

f.close()
f_out.close()
