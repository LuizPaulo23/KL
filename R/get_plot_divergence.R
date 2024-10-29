#' @title Function for Comparative Plotting Between Probability Distributions
#'
#' @name get_plot_divergence
#'
#' @description
#'
#' @param p A data.frame containing the set of reference variables
#' @param q A data.frame containing the set of comparison variables
#'
#' @details
#'
#' @return A histogram plot displaying the distribution of values between variables in `p` and `q`.
#'
#' @examples
#' \dontrun{
#'
#'
#' library(truncnorm)
#'
#' n <- 1000
#'
#' # Gerar os data frames p e q
#'
#' p <- data.frame(var1 = rtruncnorm(n, mean = 0.0, sd = 1),
#'                 var2 = rtruncnorm(n, mean = 0.1, sd = 2),
#'                 var3 = rtruncnorm(n, mean = 0.5, sd = 3),
#'                 var4 = rtruncnorm(n, mean = 0.9, sd = 4))
#'
#' q <- data.frame(var1 = rtruncnorm(n, mean = 0.9, sd = 1),
#'                 var2 = rtruncnorm(n, mean = 0.5, sd = 2),
#'                 var3 = rtruncnorm(n, mean = 0.1, sd = 3),
#'                 var4 = rtruncnorm(n, mean = 0.0, sd = 4))
#'
#'
#'  get_plot_divergence(p, q)
#'
#' }
#'
#' @export
#' @import ggplot2
#' @import tidyr

get_plot_divergence <- function(p, q){

  p <- tidyr::pivot_longer(p,
                           cols = everything(),
                           names_to = "variavel",
                           values_to = "valores")

  q <- tidyr::pivot_longer(q,
                           cols = everything(),
                           names_to = "variavel",
                           values_to = "valores")

  # Adicionar uma coluna para identificar o conjunto de dados

  p$grupo <- "p"
  q$grupo <- "q"

  data_pq <- base::rbind(p, q)

  # Criar histogramas sobrepostos \*

 plot_pq <- ggplot2::ggplot(data_pq,
            ggplot2::aes(x = valores, fill = grupo)) +
            ggplot2::geom_histogram(position = "identity",
                                 alpha = 0.7,
                                 bins = 30) +
            ggplot2::facet_wrap(~ variavel, scales = "free") +
            ggplot2::labs(title = "Divergence: Histograms of p and q Variables",
                       x = "",
                       y = "Count") +
            ggplot2::scale_fill_manual(values = c("black", "darkorange")) +
            ggplot2::theme_minimal() +
            ggplot2::theme(legend.position = "bottom",
                           legend.title = element_blank())

 return(plot_pq)


}



