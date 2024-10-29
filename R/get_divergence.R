#' @title Function to Calculate the Kullback-Leibler Divergence of a Variable
#'
#' @name get_divergence
#'
#' @description The Kullback-Leibler (KL) divergence is a statistical measure that quantifies the discrepancy between relative frequencies (or, more precisely, between two probability distributions).
#'
#' @param p receives the observations of the reference variable p, which is a vector;
#' @param q receives the observations of the comparison variable q, which is a vector.
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
#' p = c(0.14, 0.21, 0.14, 0.29, 0.19)
#' q = c(0.14, 0.20, 0.12, 0.33, 0.19)
#'
#' divergence = kl::get_divergence(p, q)
#'
#' divergence |> print()
#'
#' }
#'
#' @export


get_divergence <- function(p, q) {

  # Normalização \*

  p = p / sum(p)
  q = q / sum(q)

  # Verificações de pré-requisitos para cálculo \*

  if(length(p) != length(q) ||

                      any(is.na(p)) || any(is.na(q)) ||

                                              any(p == 0) || any(q == 0)){

    print(list(p,q))
    stop("ERRO: observação inválida encontrada")

  }

  # Calcula a KL divergence \*

  return(base::sum(p * log(p / q), na.rm = T))

}

