TREE_CLEAN <- read.csv("~/scratch/AITP2020-DS-Challenge/data/TREE_CLEAN.csv")
TREE_CLEAN_V2 <- na.omit(TREE_CLEAN, cols=c("HT","TPA_UNADJ"))
write.table(TREE_CLEAN_V2,file="scratch/AITP2020-DS-Challenge/data/TREE_NEW.csv",sep=",")
