context("quick test with small arffs")

test_that("quick test with small arffs", {
  for (dreader in c("readr")) {
  # for (dreader in c("readr", "data.table")) {
    compareRWeka(INST_ARFF_DIR, "iris.arff", data.reader = dreader)
    compareRWeka(INST_ARFF_DIR, "house.arff", data.reader = dreader)
    compareRWeka(INST_ARFF_DIR, "audiology.arff", data.reader = dreader)
    compareRWeka(INST_ARFF_DIR, "anneal.arff", data.reader = dreader)
    compareRWeka(INST_ARFF_DIR, "kr-vs-kp.arff", data.reader = dreader)
    compareRWeka(INST_ARFF_DIR, "quotes_in_factor_levels.arff", data.reader = dreader)
    compareRWeka(INST_ARFF_DIR, "many_types.arff", data.reader = dreader)
    
    expect_error(readARFF(path = paste(INST_ARFF_DIR, "dataset_1438_accelerometer.arff", sep = "/"), data.reader = dreader), 
      "Type 'relational' currently not implemented.")
  }
})

