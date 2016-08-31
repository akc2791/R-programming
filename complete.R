complete = function ( directory = "specdata",id )
{
  b = list.files(directory) 
  data.frame(b)
  v = data.frame(0,0,0)
  
  y = data.frame()
  s.no = 0
  for(i in id){ 
    non.na = 0
    data = read.csv(b[i])
    s.no = s.no + 1
    non.na = min(colSums(!is.na(data)))
    v = data.frame(s.no,id[s.no],non.na)
    y = rbind(y,v)
  }
  colnames(y) = c(" ","id","nobs")
  print(y)
}