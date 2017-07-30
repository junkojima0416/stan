data {
  int<lower=0> N;
  real<lower=0> x[N];
}

parameters {
  real mu;
  real<lower=0> sigma;
}

model {
  for(i in 1:N) {
    x[i] ~ normal(mu, sigma);
  }
}

generated quantities {
  real<lower=0> mu_over;
  real<lower=0> mu_over2;

  mu_over = step(mu - 70000);
  mu_over2 = step(mu - 75000);
}