#' Histogram with red mean line
#'
#' @param x
#' @param y
#'
#' @return
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
