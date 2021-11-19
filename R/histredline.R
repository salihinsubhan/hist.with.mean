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
histredline <- function(x, y) {
  if(!is.data.frame(x)) {
    stop("x should be a dataframe!")
  }
  if(!is.numeric(y)) {
    stop("y should be numeric!")
  }
  x %>%
    ggplot(aes(y)) +
    geom_histogram() +
    geom_vline(aes(mean(y, na.rm=T)), colour = "red")
}
