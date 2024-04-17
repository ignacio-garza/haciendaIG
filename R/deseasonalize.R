deseasonalize <- function(data) {
  data_sa <- data |>
    base::log() |>
    stats::ts(start = base::c(2003, 1), frequency = 12) |>
    seasonal::seas() |>
    stats::predict() |>
    base::exp()

  return(data_sa)
}
