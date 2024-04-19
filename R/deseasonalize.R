#' Deseasonalize a column in a dataframe
#'
#' @param data A column with numerical data
#' @param .start Argument passed to seas function
#' @param .frequency Argument passed to seas function
#'
#' @importFrom seasonal seas
#' @export
deseasonalize <- function(data, .start = c(2003, 1), .frequency = 12) {
  data_sa <- data |>
    base::log() |>
    stats::ts(start = .start, frequency = .frequency) |>
    seasonal::seas() |>
    stats::predict() |>
    base::exp()

  return(data_sa)
}
