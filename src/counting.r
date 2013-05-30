combination <- function(n,k) {

    top <- factorial(n)

    bottom <- factorial(k) * factorial(n - k)

    return (top / bottom)

}

permutations <- function(n, k) {

    top <- factorial(n)

    bottom <- factorial(n - k)

    return (top / bottom)

}