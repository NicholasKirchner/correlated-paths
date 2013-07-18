set terminal postscript eps enhanced color solid "Helvetica" 14
set output "normaldist.eps"

fx(x) = 1/sqrt(2*pi)*exp(-x**2/2)
testpt = 1.3

set title "Title"
set yzeroaxis
set key height 3 spacing 3
set arrow from testpt,0 to testpt,fx(testpt) nohead lc 3
set arrow from -testpt,0 to -testpt,fx(testpt) nohead lc 3
set label "nboo" at -testpt,-0.013 center
set label 2 "boo" at testpt,-0.013 center
plot [-4:4] fx(x) title "Y1"
