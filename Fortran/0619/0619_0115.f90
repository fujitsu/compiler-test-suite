parameter (a02=sin(0.1))
parameter (k01=kind(sin(0.1)))
parameter (k02=kind(real(0.1)))
if (k01/=4)print *,1000
if (k02/=4)print *,1001
x=0.1
if (sin(x)/=a02)print *,1002
print *,'pass'
end
