subroutine s1
parameter(a=1.0)
k1=kind(real(1.0,kind=4))
k2=kind(real(a,kind=4))
k3=kind(real(1.0       ))
k4=kind(real(a       ))
if (k1/=8)print *,201
if (k2/=8)print *,202
if (k3/=8)print *,203
if (k4/=8)print *,204
end
call s1
print *,'pass'
end
