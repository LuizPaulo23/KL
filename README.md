# {KL}

The `KL` package provides functions for calculating the Kullback-Leibler (KL) divergence. This package is useful for a wide range of applications, including machine learning, data analysis, and statistical inference, where comparing probability distributions is essential.

## Description

The Kullback-Leibler (KL) divergence is a statistical distance that quantifies the discrepancy between relative frequencies (or, more precisely, between two probability distributions). Given a reference probability distribution \( P \), it seeks to compare it with another probability distribution \( Q \). Defined over the same event space \( X \), it is expressed as follows:

$$
D_{KL}(P || Q) = \sum_{x \in X} P(x) \log\left(\frac{P(x)}{Q(x)}\right)
$$

For distributions \( P \) and \( Q \) of a continuous random variable:

$$
D_{KL}(P || Q) = \int_{-\infty}^{\infty} P(x) \log\left(\frac{P(x)}{Q(x)}\right) dx
$$

**Discrete**: The calculation uses a weighted sum of the probabilities for each event in \( P \), comparing them with \( Q \). This approach is suitable for distributions with a finite number of possible outcomes/events, such as categorical variables or frequency counts across distinct categories.

**Continuous**: The calculation of continuous KL divergence involves an integral over the support of the probability density function. This approach is used for distributions where variables can take any value within a continuous interval (e.g., Normal or Exponential distributions), and density functions need to be integrated.

The package focuses on the first case, that is, the discrete case.

## Key Features

- **KL Divergence Calculation**: Functions to compute KL divergence for discrete and continuous probability distributions.
- **Distribution Comparison**: Tools for comparing observed frequencies or probability distributions in various contexts.
- **Visualization**: Built-in plotting functions for visualizing the divergence between distributions.
- **Applications**: Example workflows for using KL divergence in model evaluation, hypothesis testing, and information gain analysis.

## Installation

To install the `KL` package, you can use the following commands in R:

```R
# Install from GitHub

devtools::install_github("LuizPaulo23/Kullback-Leibler-Divergence")
```

## Usage


