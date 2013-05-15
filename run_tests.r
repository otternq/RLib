library('RUnit')
source("./src/utils.r")
source('./src/basicStats.R')
 
test.suite <- defineTestSuite("Basic Stats",
                              dirs = file.path("tests"),
                              testFileRegexp = '*.test.r')
 
test.result <- runTestSuite(test.suite)
 
printTextProtocol(test.result)