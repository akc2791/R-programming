corr <- function(directory , threshold = 0){
  b = list.files(directory) 
  corra = 0
  
  for(i in 1:332){ 
    data = read.csv(b[i])
    
    if(nrow(na.omit(data)) > threshold){
      corra = cor(data[,2],data[,3],use="pairwise.complete.obs")
    }else{}
    
    cor = cbind(cor,corra)
  }

c = c(1:length(cor))
c = as.vector(cor)

  print(c)
}