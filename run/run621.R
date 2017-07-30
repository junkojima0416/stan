scr<-"/Users/kojimajun/stan/model/model621.stan"
data <-list(N1=N1, N2=N2, x1=x1, x2=x2)

par<-c("mu1","mu2","sigma1","sigma2","delta","delta_over","delta_over1")

war <- 1000
ite <- 11000
see <- 1234
dig <- 3
cha <- 1

fit <- stan(file = scr, data = data, iter=ite, seed=see, warmup=war,pars=par,chains=cha)
print(fit,pars=par,digits_summary=dig)

traceplot(fit,inc_warmup=F)
plot(fit)