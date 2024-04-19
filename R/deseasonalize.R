#' Deseasonalize a column in a dataframe
#'
#' @param data A column with numerical data
#' @param .start Argument passed to seas function
#' @param .frequency Argument passed to seas function
#' @param ... Arguments passed to seas from seasonal
#'
#' @importFrom seasonal seas
#' @export
deseasonalize <- function(data, .start = c(2003, 1), .frequency = 12, ...) {
  data_sa <- data |>
    stats::ts(start = .start, frequency = .frequency) |>
    seasonal::seas(...) |>
    stats::predict()
  return(data_sa)
}
