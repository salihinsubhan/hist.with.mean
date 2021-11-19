test_that("histogram with mean line is generated properly", {
  data(iris)
  p <- histredline(iris, Sepal.Length)
  expect_true(is.ggplot(p))
  expect_error(print(histredline(iris, Species)), NA)
  xx
  rm(iris)
  rm(p)
})
