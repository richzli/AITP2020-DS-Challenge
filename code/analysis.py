df = pandas.read_csv("TREE_NEW.csv")

htdata = df.groupby("SPECIES",as_index=False)["HT"].mean()
htdata = htdata.rename(columns={"HT":"AVGHT"})
htdata["MAXHT"] = df.groupby("SPECIES",as_index=False)["HT"].max()["HT"]
htdata = htdata.sort_values(by="AVGHT",ascending=False)
htdata.to_csv("../outputs/htdata.csv")

diadata = df.groupby("SPECIES",as_index=False)["DIA"].mean()
diadata = diadata.rename(columns={"DIA":"AVGDIA"})
diadata["MAXDIA"] = df.groupby("SPECIES",as_index=False)["DIA"].max()["DIA"]
diadata["AVGHT"] = df.groupby("SPECIES",as_index=False)["HT"].mean()["HT"]
diadata = diadata.sort_values(by="AVGDIA",ascending=False)
diadata.to_csv("../outputs/diadata.csv")

yrdata = df.groupby("INVYR",as_index=False)["HT","DIA"].mean()
yrdata = yrdata.rename(columns={"HT":"AVGHT","DIA":"AVGDIA"})
yrdata.to_csv("../outputs/yrdata.csv")
