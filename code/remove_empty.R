TREE_CLEAN <- read.csv("~/scratch/AITP2020-DS-Challenge/data/TREE_CLEAN.csv")
SPECIES <- read.csv("~/scratch/AITP2020-DS-Challenge/data/SPECIES.csv")
TREE_CLEAN_V2 <- na.omit(TREE_CLEAN, cols=c("HT","TPA_UNADJ"))
TREE_CLEAN_V2$SPECIES <- SPECIES$COMMON_NAME[match(TREE_CLEAN_V2$SPCD,SPECIES$SPCD)]
write.table(TREE_CLEAN_V2,file="scratch/AITP2020-DS-Challenge/data/TREE_NEW.csv",sep=",")
