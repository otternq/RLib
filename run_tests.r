library('RUnit')
source("./src/inputs.r")
source("./src/utils.r")
source('./src/average.r')
source('./src/counting.r')
 
test.suite <- defineTestSuite("Basic Stats",
                              dirs = file.path("tests"),
                              testFileRegexp = '*.test.r')
 
test.result <- runTestSuite(test.suite)
 
printTextProtocol(test.result)