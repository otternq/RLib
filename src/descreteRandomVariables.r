drv.expected <- function(pm) {
    sum <- 0

    i <- 1
    while( i <= ncol(pm)) {
        sum <- sum + (pm[1, i] * pm[2, i])

        i <- i + 1
    }

    return(sum)
}

drv.variance <- function(pm) {
    sum <- 0

    i <- 1
    while( i <= ncol(pm)) {
        sum <- sum + (((pm[1, i] - drv.expected(pm))^2) * pm[2, i])
        i <- i + 1
    }
}