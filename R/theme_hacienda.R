#' Theme similar to Hacienda's Excel theme
#'
#' @param legend.position Position for the legend. The argument can be either a
#' string ("top", "bottom") or a vector with coordinates.
#'
#' @import ggplot2
#' @export
theme_hacienda <- function(legend.position = "top") {

  ggplot2::theme(
    text = element_text(
                        color = "black",
                        family = "Questrial"
                        ),

    # Edición de lo elementos del panel
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major = ggplot2::element_blank(),
    panel.background = ggplot2::element_blank(),

    # Edición de elementos de los ejes
    axis.line = ggplot2::element_line(color = "black"),

    axis.title = ggplot2::element_blank(),
    axis.ticks = ggplot2::element_line(color = "black"),

    # Edición de los elementos de la leyenda
    legend.position = legend.position,
    legend.title = ggplot2::element_blank(),
  )
}
