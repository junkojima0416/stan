src <- "/Users/kojimajun/stan/model/model633.stan"
data <- list(N=N, x=x)

par = c("mu", "sigma", "quantile_3rd", "prob_over")

war <- 1000
ite <- 11000
see <- 12345
dig <- 3
cha <- 1

fit <- stan(file=src, data=data, iter=ite, seed=see, warmup=war, pars=par, chains=cha)