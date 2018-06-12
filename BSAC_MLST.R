setwd("~/Desktop/")
library(ggplot2)

CUH_MLST <- read.csv("CUH_MLST.csv", header = T)
BSAC_MLST <- read.csv("BSAC_MLST.csv", header = T)
Combined_MLST <- read.csv("Combined_MLST.csv", header = T)

pie(CUH_MLST$Frequency, labels = CUH_MLST$Isolate, init.angle = 90, radius = 1,
    cex = 0.5)

ggplot(CUH_MLST, aes(x = Isolate, y = Frequency, fill = Isolate)) + geom_bar(stat='identity') +
  scale_y_continuous(limits = c(0,80)) + 
  theme(legend.position="none", panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 90, hjust = 1))

ggplot(BSAC_MLST, aes(x = MLST, y = Frequency, fill = MLST)) + geom_bar(stat='identity') +
  scale_y_continuous(limits = c(0,30)) + 
  theme(legend.position="none", panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 90, hjust = 1))

ggplot(Combined_MLST, aes(x = ST, y = Frequency, fill = ST)) + geom_bar(stat='identity') +
  scale_y_continuous(limits = c(0,100)) + 
  theme(legend.position="none", panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 90, hjust = 1))


