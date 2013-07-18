set terminal postscript eps enhanced color solid "Helvetica" 14
set output "pricedist.eps"

testpt = 1.3
set title "Title"
set yzeroaxis
set key height 3 spacing 3
set xtic 15
S0 = 50
K = 20
r = .05
sigma = .5
T = 1
fX(x) = 1/sqrt(2*pi)*exp(-x**2/2)
g(x) = (S0*exp(T*(r-sigma**2/2) + sigma*sqrt(T)*x) - K) * exp(-r*T)
ginv(x) = 1/(sigma*sqrt(T))*(log((x*exp(r*T)+K)/S0)-T*(r-sigma**2/2))
dginv(x) = exp(r*T)/(sigma*sqrt(T)*(x*exp(r*T)+K))
gy(x) = dginv(x)*fX(ginv(x))

set arrow from g(testpt),0 to g(testpt),gy(g(testpt)) nohead lc 3
set arrow from g(-testpt),0 to g(-testpt),gy(g(-testpt)) nohead lc 3
set label "nboo" at g(-testpt),-0.001 center
set label 2 "boo" at g(testpt),-0.001 center
plot [-50:100] gy(x) title "Y1"
