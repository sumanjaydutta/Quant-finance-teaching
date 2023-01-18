Lags = as.numeric(c(1:20))
matplot(Lags, bitlitcq1,
         main = "Cross-Quantilogram", xlab = "Lags", ylab = "CQC",
         type = "b", pch = 20, col = rainbow(3))
 legend("topright", inset=0.01, legend = colnames(bitlitcq1), pch = 20, col = rainbow(3))
 