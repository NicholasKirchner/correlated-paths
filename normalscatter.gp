set terminal postscript eps enhanced color solid "Helvetica" 14
set output "normalscatter.eps"

set title "Title"
set yzeroaxis
set xzeroaxis
set xrange [-5:5]
set yrange [-5:5]
set xlabel "nboo"
set ylabel "boo"
unset key
plot -x