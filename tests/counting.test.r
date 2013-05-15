test.combinations <- function () {
    checkEquals( combination(10, 3), 120, "Basic Combination")
}

test.permutations <- function () {
    checkEquals( permutations(10, 3), 720, "Basic Permutations")
}