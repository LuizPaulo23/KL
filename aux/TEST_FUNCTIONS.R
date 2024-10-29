#' @title Testando as funções do pacote kl
#' @author Luiz Paulo Tavares Gonçalves

base::rm(list = ls())
grDevices::graphics.off()

# FUN: get_divergence \*

p = c(0.14,0.21,0.14,0.29,0.19)
q = c(0.14,0.20,0.12,0.33,0.19)

divergence = kl::get_divergence(p, q)

divergence |> print()

# FUN: get_divergence_df \*

p <- data.frame(a = c(25, 36, 45.6, 98.2, 12.8),
                b = c(25, 69, 52.1, 25, 14.5))

q <- data.frame(a = c(25, 36, 45.6, 98.2, 12.8),
                b = c(25, 69, 52, 26, 14))

divergence_df = kl::get_divergence_df(p, q)

divergence_df |> print()

# FUN: get_plot_divergence

library(truncnorm)

n <- 1000

# Gerar os data frames p e q

p <- data.frame(var1 = rtruncnorm(n, mean = 0.0, sd = 1),
                var2 = rtruncnorm(n, mean = 0.1, sd = 2),
                var3 = rtruncnorm(n, mean = 0.5, sd = 3),
                var4 = rtruncnorm(n, mean = 0.9, sd = 4))

q <- data.frame(var1 = rtruncnorm(n, mean = 0.9, sd = 1),
                var2 = rtruncnorm(n, mean = 0.5, sd = 2),
                var3 = rtruncnorm(n, mean = 0.1, sd = 3),
                var4 = rtruncnorm(n, mean = 0.0, sd = 4))


get_plot_divergence(p, q)
