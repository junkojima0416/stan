scr <- "/Users/kojimajun/stan/model/model631.stan"
data <- list(N=N, x=x)

par <- c("mu", "mu_over", "mu_over2")

war <- 1000
ite <- 11000
see <- 12345
dig <- 3
cha <- 1

fit <- stan(file = scr, data = data, iter = ite, seed = see, warmup = war, pars = par, chains = cha)

print(fit, pars = par, digits_summary = dig)
traceplot(fit, inc_warmup=F)
plot(fit)