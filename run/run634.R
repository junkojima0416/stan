src <- "/Users/kojimajun/stan/model/model634.stan"
data <- list(N1=N1, N2=N2, x1=x1, x2=x2)

par <- c("mu1","mu2","sigma","delta", "delta_over", "delta_over2")

war <- 1000
ite <- 11000
see <- 12345
dig <- 3
cha <- 1

fit <- stan(file=src, data=data, iter=ite, seed=see, warmup=war, pars=par, chains=cha)