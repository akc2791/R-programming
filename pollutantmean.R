pollutantmean = function ( directory = "specdata" ,pollutant, id = 1:332){
  b = list.files(directory)  
  noOfFiles =0
  meandata = 0
  suma = 0
  non.na = 0
  for(i in id){ 
    noOfFiles = noOfFiles +1;
    data = read.csv(b[i] );
    suma = suma + sum(data[[pollutant]], na.rm = TRUE)
    non.na = non.na + colSums(!is.na(data[pollutant]))
  }
  d = suma/non.na
  print(d)
}
