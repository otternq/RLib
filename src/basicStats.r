mean <- function(l) {
    sum <- 0

    for (i in l) {
        sum <- sum + i
    }

    return(sum / length(l))
}

median <- function(l) {

    #order the list accending
    l[order(l)]

    if (is.even(length(l))) {
        #if even, return the average of (n/2) and (n/2 + 1)
        average <- (l[ length(l) / 2 ] + l[ (length(l) / 2) + 1]) / 2
        return (average)
    } else {
        #if odd, return ((n+1)/2)
        return(l[ (length(l) + 1) / 2 ])
    }
}

mode <- function(l) {
    l[order(l)]

    #initialize the first item as the max to skip the first
    max <- 1
    char <- l[1]

    #the list of modes
    sameList = list(char)

    curLen <- 1

    i <- 2

    while( i <= length(l) ) {

        if (l[i] != l[i-1]) {

            if (curLen > max) {
                max <- curLen
                char <- l[i - 1]
                sameList <- list(char)
            } else if (curLen == max) {
                sameList <- c(sameList, l[i - 1])
            }

            curLen <- 1
        } else {
            curLen <- curLen + 1
        }

        i <- i + 1
    }

    if (curLen > max) {
        max <- curLen
        char <- l[i - 1]
        sameList <- list(char)
    } else if (curLen == max) {
        sameList <- c(sameList, l[i - 1])
    }

    return(sameList)
}

variance <- function(l) {
    listAverage <- mean(l)

    sum <- 0

    for (i in l) {
        sum <- sum + ((i - listAverage) ^ 2)
    }

    return(sum / (length(l) - 1))
}

standardDeviation <- function(l) {
    return(sqrt(variance(l)))
}