#' @title Testando as funções do pacote kl
#' @author Luiz Paulo Tavares Gonçalves

base::rm(list = ls())
grDevices::graphics.off()

# FUN: get_divergence \*

p = c(0.14,0.21,0.14,0.29,0.19)
q = c(0.14,0.20,0.12,0.33,0.19)

kl::get_divergence(p, q)

# FUN: get_divergence_df \*

p <- data.frame(a = c(25, 36, 45.6, 98.2, 12.8),
                b = c(25, 69, 52.1, 25, 14.5))

q <- data.frame(a = c(25, 36, 45.6, 98.2, 12.8),
                b = c(25, 69, 52, 26, 14))

kl::get_divergence_df(p, q)


