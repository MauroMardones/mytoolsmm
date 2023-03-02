#' A function set a custom ggplot theme.
#'
#' This function sets ggplot theme elements that I like, with the ability to change
#' the base size of the text.
#'
#' @param base_size Base size of plot text
#'
#' @keywords plotting
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
#'     geom_point() +
#'     custom_theme(base_size = 10)
#'

custom_theme <- function(base_size = 9) {
  ggplot2::theme(
    axis.ticks       = ggplot2::element_blank(),
    text             = ggplot2::element_text(family = 'Helvetica', color = 'gray30', size = base_size),
    plot.title       = ggplot2::element_text(size = ggplot2::rel(1.25), hjust = 0.5, face = 'bold'),
    panel.background = ggplot2::element_blank(),
    legend.position  = 'right',
    panel.border     = ggplot2::element_blank(),
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major = ggplot2::element_line(colour = 'grey90', size = .25),
    legend.key       = ggplot2::element_rect(colour = NA, fill = NA),
    axis.line        = ggplot2::element_blank()
  )
}
