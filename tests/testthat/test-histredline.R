test_that("histogram with mean line is generated properly", {
  data(iris)
  p <- histredline(iris, Sepal.Length)
  expect_true(ggplot2::is.ggplot(p))
  expect_identical(class(p$layers[[1]]$geom)[1], "GeomBar")
  expect_identical(class(p$layers[[2]]$geom)[1], "GeomVline")
  expect_error(print(histredline(iris, Species)), "column should be numeric!")
})
