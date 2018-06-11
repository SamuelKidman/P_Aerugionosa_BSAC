setwd("~/Desktop/")
library(reshape2)
library(ggplot2)

phenotype <- read.csv(as.matrix("BSAC_R_phenotypes.csv", header = T, row.names = 1))

melted = melt(phenotype, id.vars = c("ID", "ID2"))

ggplot(melted, aes(x = factor(ID, levels = c("BSAC", "CUH", "Combined")), y = value , fill=factor(ID2, levels = c("Resistant","Intermediate","Sensitive")))) +
  geom_bar(stat='identity', position = 'stack') + facet_grid(~ variable) +
  scale_fill_brewer(palette="Set1") + labs(x = "", y = "% of isolates", fill = "") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

