library(knitr)
opts_chunk$set(cache = TRUE,
               tidy = FALSE,
               fig.width = 7,
               fig.height = 6,
               fig.align = "center",
               dpi = 96,
               dev = "png",
               warning = FALSE,
               dev.args = list(family = "Palatino"))
options(width = 68)

library(latticeExtra)
mycol <- c("#E41A1C", "#377EB8", "#4DAF4A",
           "#984EA3", "#FF7F00", "#FFFF33")

# Trellis graphical style.
ps <- list(box.rectangle = list(col = 1, fill = c("gray70")),
           box.umbrella = list(col = 1, lty = 1),
           dot.symbol = list(col = 1, pch = 19),
           dot.line = list(col = "gray50", lty = 3),
           plot.symbol = list(col = 1, cex = 0.8),
           plot.line = list(col = 1),
           plot.polygon = list(col = "gray95"),
           superpose.line = list(col = mycol, lty = 1),
           superpose.symbol = list(col = mycol, pch = 1),
           superpose.polygon = list(col = mycol),
           strip.background = list(col = c("gray80", "gray50")),
           axis.text = list(cex = 0.8))
trellis.par.set(ps)
# show.settings()
