data {
  int<lower=1> n;
  vector[n] x;
}

parameters {
  real theta;
  real<lower=0> sigma;
}

model {
  // Priors
  theta ~ normal(0, 10);
  sigma ~ exponential(1);

  // Likelihood
  x ~ logistic(theta, sigma);
}
