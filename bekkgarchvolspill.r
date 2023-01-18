#bekkgarch for volatility spillover
library(mgarchBEKK)
crypto = read.csv("cryptoreturns.csv")
cryptomat = as.matrix(crypto)
#bitcoin litecoin
cryptomat1 = cryptomat[,1:2]
estimated = BEKK(cryptomat1)
#litecoin, ethereum
cryptomat2 = cryptomat[,2:3]
estimated2 = BEKK(cryptomat2)
#bitcoin, ethereum
cryptomat3 = cryptomat[,-2]
estimated = BEKK(cryptomat3)