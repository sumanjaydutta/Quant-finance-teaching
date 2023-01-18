library(wavScalogram)
crypto = read.csv("cryptoreturns.csv")
cryptomat = as.matrix(crypto)
#Bit vs Lite
wsd1 <- wsd(signal1 = crypto$Bitcoin, signal2 = crypto$Litecoin, mc_nrand = 10, makefigure = FALSE)
wavplot1 = wavPlot(Z = -log2(wsd$wsd), X = wsd$t, Y = wsd$scales, Ylog = TRUE, coi = wsd$coi,
rdist = wsd$rdist, sig95 = wsd$signif95, sig05 = wsd$signif05, Xname = "Period",
Yname = "Scale", Zname = "Bitcoin vs Ethereum")
#Lite vs Eth
wsd2 <- wsd(signal1 = crypto$Litecoin, signal2 = crypto$Ethereum, mc_nrand = 10, makefigure = FALSE)
wavplot2 = wavPlot(Z = -log2(wsd$wsd), X = wsd$t, Y = wsd$scales, Ylog = TRUE, coi = wsd$coi,
rdist = wsd$rdist, sig95 = wsd$signif95, sig05 = wsd$signif05, Xname = "Period",
Yname = "Scale", Zname = "Litecoin vs Ethereum")
#Bit vs Eth
wsd3 <- wsd(signal1 = crypto$Bitcoin, signal2 = crypto$Ethereum, mc_nrand = 10, makefigure = FALSE)
wavplot2 = wavPlot(Z = -log2(wsd$wsd), X = wsd$t, Y = wsd$scales, Ylog = TRUE, coi = wsd$coi,
rdist = wsd$rdist, sig95 = wsd$signif95, sig05 = wsd$signif05, Xname = "Period",
Yname = "Scale", Zname = "Bitcoin vs Ethereum")
