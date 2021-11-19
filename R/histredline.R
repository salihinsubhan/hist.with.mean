#' Histogram with red mean line
#'
#' This function creates a histogram of a numeric variable and adds a red line denoting the position of the mean in the distribution of values of the variable.
#'
#' @param data Dataset which contains the numeric variable
#' @param column Variable used to generate the histogram
#'
#' @return A histogram with a red line denoting the mean
#' @export
#'
#' @examples
#' histredline(mtcars, mpg)
#' @importFrom ggplot2 ggplot aes geom_histogram geom_vline
histredline <- function(data, column) {
  if(!is.data.frame(data)) {
    stop("data should be a dataframe!")
  }
  if(!is.numeric(data[,column])) {
    stop("column should be numeric!")
  }
  mean.col <- mean(data[,column], na.rm=T)
  x %>%
    ggplot2::ggplot(aes(data[,column])) +
    ggplot2::geom_histogram() +
    ggplot2::geom_vline(aes(xintercept = mean.col), colour = "red")
}
