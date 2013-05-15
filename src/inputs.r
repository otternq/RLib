fileToMatrix <- function(fileName, tempHeader=FALSE, tempSep = "") {
    return(as.matrix(read.delim(fileName, header=tempHeader, colClasses = "numeric", sep = tempSep)))
}