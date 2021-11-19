#' Histogram with red mean line
#'
#' This function creates a histogram of a numeric variable and adds a red line denoting the position of the mean in the distribution of values of the variable.
#'
#' @param x Dataset which contains the numeric variable
#' @param y Variable used to generate the histogram
#'
#' @return A histogram with a red line denoting the mean
#' @export
#'
#' @examples
#' histredline(mtcars, mpg)
#' @importFrom ggplot2 ggplot aes geom_histogram geom_vline
histredline <- function(x, y) {
  calc <-
  if(!is.data.frame(x)) {
    stop("x should be a dataframe!")
  }
  if(!is.numeric({{ y }})) {
    stop("y should be numeric!")
  }
  mean.y <- mean({{ y }}, na.rm=T)
  x %>%
    ggplot2::ggplot(aes({{ y }})) +
    ggplot2::geom_histogram() +
    ggplot2::geom_vline(aes(xintercept = mean.y), colour = "red")
}
