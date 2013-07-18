set terminal postscript eps enhanced color solid "Helvetica" 14
set output "optionscatter.eps"

set title "Title"
set parametric
set xrange [0:100]
set yrange [0:100]
set xlabel "nboo"
set ylabel "boo"
unset key
S0 = 50
K = 20
r = .05
sigma = .5
T = 1
max(a,b) = (a>b)?a:b
g(x) = max((S0*exp(T*(r-sigma**2/2) + sigma*sqrt(T)*x) - K) * exp(-r*T),0)
plot g(t),g(-t)