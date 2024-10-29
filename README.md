{KL}

The Kullback-Leibler (KL) divergence is a statistical distance that quantifies the discrepancy between relative frequencies (or, more precisely, between two probability distributions). Given a reference probability distribution $P$, it seeks to compare it with another probability distribution $Q$. Defined over the same event space $X$, it is expressed as follows:

$$
D_{KL}(P || Q) = \sum_{x \in X} P(x) \log\left(\frac{P(x)}{Q(x)}\right)
$$
For distributions P and Q of a continuous random variable: 

$$
D_{KL}(P || Q) = \int_{-\infty}^{\infty} P(x) \log\left(\frac{P(x)}{Q(x)}\right) dx
$$
