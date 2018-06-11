setwd("~/Desktop/")
library(reshape2)
library(ggplot2)


MDR_stats <- read.csv("BSAC_MDR_phenotypes.csv", header = F)

MDR_IDs <- read.csv("BSAC_MDR_phenotypes_plot.csv", header = T)

ggplot(MDR_IDs, aes(x = MDR , fill=factor(ID2))) + geom_histogram(stat="count") +
  scale_fill_manual(values=c("Blue", "Red")) + scale_x_continuous(breaks = seq(0, 10), limits = c(-0.5,7.5), expand=c(0,0)) +
  scale_y_continuous(breaks = round(seq(min(0), max(120), by = 10),120), expand = c(0,0), limits = c(0,115)) + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) +
  labs(x = "Number of Classes of Antibiotics", y = "Number of Resistant Isolates", fill = "")

ggplot(MDR_stats, aes(x = factor(V1, levels = c("BSAC", "CUH", "Combined")), y = V3, fill = V1)) + geom_bar(stat='identity') +
  labs(x = "", y = "% of Isolates MDR", fill = "") + scale_y_continuous(breaks = round(seq(min(0), max(105), by = 10),105), expand = c(0,0), limits = c(0,105)) +
  scale_fill_manual(values=c("Blue", "Purple","Red")) + theme(legend.position="none", panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black"))
  