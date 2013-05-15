test.mean <- function() {
    checkTrue( mean(c(1,2,3,4)) == 2.5, 'Mean works')
}

test.median <- function() {
    checkTrue( median(c(1,2,3,4,5)) == 3, 'Median works')
}

test.mode <- function() {
    checkTrue( mode(c(1,2,2)) == c(2), "Basic mode works")
    
    checkEquals(mode(c(1,1,2,2,3,3)), c(1,2,3), "Multi mode works")
}

test.deactivation <- function()
{
  DEACTIVATED('Deactivating this test function')
}