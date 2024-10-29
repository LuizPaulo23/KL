#' @title Function to Calculate the Kullback-Leibler Divergence of n Variables from a data.frame
#'
#' @name get_divergence_df
#'
#' @description The Kullback-Leibler (KL) divergence is a statistical measure that quantifies the discrepancy between relative frequencies (or, more precisely, between two probability distributions).
#'
#' @param p receives a set of reference variables in a data.frame (a KL divergence is calculated for each variable in the data.frame)
#' @param q receives a set of comparison variables in a data.frame (a KL divergence is calculated for each variable in the data.frame)
#'
#' @details
#' Computes the Kullback-Leibler divergence as a numerical value.
#'
#' @return Returns the Kullback-Leibler divergence as a numeric value
#'
#' @examples
#' \dontrun{
#'
#' # Kullback-Leibler Divergence
#'
#' base::rm(list = ls())
#'
#' p <- data.frame(var1 = c(25, 36, 45.6, 98.2, 12.8),
#'                 var2 = c(25, 69, 52.1, 25, 14.5))
#'
#' q <- data.frame(var1 = c(25, 36, 45.6, 98.2, 12.8),
#'                 var2 = c(25, 69, 52, 26, 14))
#'
#' divergence = kl::get_divergence_df(p, q)
#'
#' divergence |> print()
#'
#' }
#'
#' @export

get_divergence_df <- function(p, q) {

  kl_results <- c()

  # Para cada variável no data.frame

  for (col in colnames(p)) {
    if (col %in% colnames(q)) {

      # Chama a função de divergência com as colunas específicas

      kl_value <- kl::get_divergence(p[[col]], q[[col]])
      kl_results <- c(kl_results, setNames(kl_value, col))

    }
  }

  return(kl_results)
}
