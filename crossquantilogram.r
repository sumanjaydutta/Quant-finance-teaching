 #bearish, normal, and bullish market conditions are represented by 0.1, 0.5, and 0.9, respectively.
 library(quantilogram)
 crypto = read.csv("cryptoreturns.csv")
 cryptomat = as.matrix(crypto)
 #bearish
 #Bit-Lit
 crossbl1 = crossq.max(cryptomat[,1:2], c(0.1,0.1), Kmax = 20) # too just get the ross-quantilogram values.
 crossq.sb(cryptomat[,1:2], c(0.1,0.1), 5, 1/10, 1000, 0.05) #can perform a for loop for each of the lags to get the critical values here. Shown below. This also gives the cross-quantilogram values, so better to use this approach.

 for (k in 1:20) {
  crypcvbl1 = crossq.sb(cryptomat[,1:2], c(0.1,0.1), k, 1/10, 1000, 0.05)
  print(crypcvbl1)
}
#do similarly for other pairs and other market conditions
 #Lit-Eth
 crossle1 = crossq.max(cryptomat[,2:3], c(0.1,0.1), Kmax = 20)
 for (k in 1:20) {
  crypcvle1 = crossq.sb(cryptomat[,2:3], c(0.1,0.1), k, 1/10, 1000, 0.05)
  print(crypcvle1)
}
 #Bit-Eth
 crossbe1 = crossq.max(cryptomat[,-2], c(0.1,0.1), Kmax = 20)
 for (k in 1:20) {
  crypcvbe1 = crossq.sb(cryptomat[,-2], c(0.1,0.1), k, 1/10, 1000, 0.05)
  print(crypcvle1)
}
 #normal
 #Bit-Lit
 crossbl5 = crossq.max(cryptomat[,1:2], c(0.5,0.5), Kmax = 20)
 for (k in 1:20) {
  crypcvbl5 = crossq.sb(cryptomat[,1:2], c(0.5,0.5), k, 1/10, 1000, 0.05)
  print(crypcvle1)
}
 #Lit-Eth
 crossle5 = crossq.max(cryptomat[,2:3], c(0.5,0.5), Kmax = 20)
 for (k in 1:20) {
  crypcvle5 = crossq.sb(cryptomat[,2:3], c(0.5,0.5), k, 1/10, 1000, 0.05)
  print(crypcvle1)
}
 #Bit-Eth
 crossbe5 = crossq.max(cryptomat[,-2], c(0.5,0.5), Kmax = 20)
 for (k in 1:20) {
  crypcvbe5 = crossq.sb(cryptomat[,-2], c(0.5,0.5), k, 1/10, 1000, 0.05)
  print(crypcvle1)
}
  #bullish
 #Bit-Lit
 crossbl9 = crossq.max(cryptomat[,1:2], c(0.9,0.9), Kmax = 20)
 for (k in 1:20) {
  crypcvbl9 = crossq.sb(cryptomat[,1:2], c(0.9,0.9), k, 1/10, 1000, 0.05)
  print(crypcvle1)
}
 #Lit-Eth
 crossle9 = crossq.max(cryptomat[,2:3], c(0.9,0.9), Kmax = 20)
 for (k in 1:20) {
  crypcvle9 = crossq.sb(cryptomat[,2:3], c(0.9,0.9), k, 1/10, 1000, 0.05)
  print(crypcvle1)
}
 #Bit-Eth
 crossbe9 = crossq.max(cryptomat[,-2], c(0.9,0.9), Kmax = 20)
 for (k in 1:20) {
  crypcvbe9 = crossq.sb(cryptomat[,-2], c(0.9,0.9), k, 1/10, 1000, 0.05)
  print(crypcvle1)
}
#box pierce test stats 
#bearish 
bpbl1 = Qstat.sb.opt(cryptomat[,1:2], c(0.1,0.1), 20, 1000, 0.05)
bple1 = Qstat.sb.opt(cryptomat[,2:3], c(0.1,0.1), 20, 1000, 0.05)
bpbe1 = Qstat.sb.opt(cryptomat[,-2], c(0.1,0.1), 20, 1000, 0.05)
#normal
bpbl5 = Qstat.sb.opt(cryptomat[,1:2], c(0.5,0.5), 20, 1000, 0.05)
bple5 = Qstat.sb.opt(cryptomat[,2:3], c(0.5,0.5), 20, 1000, 0.05)
bpbe5 = Qstat.sb.opt(cryptomat[,-2], c(0.5,0.5), 20, 1000, 0.05)
#bullish 
bpbl9 = Qstat.sb.opt(cryptomat[,1:2], c(0.9,0.9), 20, 1000, 0.05)
bple9 = Qstat.sb.opt(cryptomat[,2:3], c(0.9,0.9), 20, 1000, 0.05)
bpbe9 = Qstat.sb.opt(cryptomat[,-2], c(0.9,0.9), 20, 1000, 0.05)

 
  
  