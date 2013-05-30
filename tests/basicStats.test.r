test.mean <- function() {
    checkTrue( mean(c(1,2,3,4)) == 2.5, 'Mean works')
}

test.median <- function() {
    checkTrue( median(c(1,2,3,4,5)) == 3, 'Median works with odd data set')
    checkTrue( median(c(1,2,3,4)) == 2.5, 'Median works with odd data set')
}

test.mode <- function() {
    checkTrue( mode(c(1,2,2)) == c(2), "One mode test")
    checkEquals(mode(c(1,1,2,2,3,3)), c(1,2,3), "Multi mode works")
    checkEquals(mode(c(1,1,2,2,3,3,2)), c(1,2,3), "mode out of order")
}

test.variance <- function() {
    checkEquals(variance(c(.684, 2.540, .924, 3.130, 1.038, .598, .483, 3.520, 1.285, 2.650, 1.497)), 1.19358, "example from boot table 1.3; example 1.15")
}

test.deactivation <- function() {
  DEACTIVATED('Deactivating this test function')
}