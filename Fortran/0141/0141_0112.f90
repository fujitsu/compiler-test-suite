complex(8)::c
real(8)::a
c=(2,3)
a=1
if (kind( real( c ) ) /= 8) print *,101
if (kind( real( a ) ) /=4 ) print *,102
if (kind(imag(c))/=8) print *,103
if (kind(aimag(c))/=8) print *,104
if (    (imag(c))/=3) print *,103
if (    (aimag(c))/=3) print *,104
print *,'pass'
end
