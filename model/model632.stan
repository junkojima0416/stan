data {
  int<lower=0> N;
  real x[N];
}

parameters {
  real<lower=0> sigma;
}

transformed parameters {
  real<lower=0> sigmasq;
  sigmasq = pow(sigma, 2);
}

model {
  for (i in 1:N) {
    x[i] ~ normal(130, sigma);
  }
}

generated quantities {
  real sigma_over;
  sigma_over = step(sigmasq - 1.0);
}