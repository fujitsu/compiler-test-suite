implicit real(16)(z)
real(16),parameter::x1=fraction(1.2345678_16)
real(16),parameter::y1=merge(1.2345678_16,0._16,.true.)
real(16),parameter::y2=aint(12345678._16,16)
real(16),parameter::y3=sign(12345678._16,-0.0)
real(16),parameter::y4=modulo(12345678._16,-123456.0_16)
real(16),parameter::y5=nint(12345678._16,8)
real(16),parameter::y6=nearest(1.2345678_16,2.0_16)
real(16),parameter::y7=spacing(1.2345678_16)
real(16),parameter::y8=rrspacing(3.0_16)
real(16),parameter::y9=scale(3.0_16,2)
real(16),parameter::ya=set_exponent(3.0_16,1)
real(16),parameter::yb=3.0_16**4.0_16
real(16),parameter::yc=anint(12345678._16,16)
z=fraction(1.2345678_16)
if (abs(x1-z)> 0.0000000000000001_16)print *,101
z=merge(1.2345678_16,0._16,.true.)
if (abs(y1-z)> 0.0000000000000001_16)print *,102
z=aint(12345678._16,16)
if (abs(y2-z)> 0.0000000000000001_16)print *,103
z=sign(12345678._16,-0.0)
if (abs(y3-z)> 0.0000000000000001_16)print *,104
z=modulo(12345678._16,-123456.0_16)
if (abs(y4-z)> 0.0000000000000001_16)print *,105
z=nint(12345678._16,8)
if (abs(y5-z)> 0.0000000000000001_16)print *,106
z=nearest(1.2345678_16,2.0_16)
if (abs(y6-z)> 0.0000000000000001_16)print *,107
z=spacing(1.2345678_16)
if (abs(y7-z)> 0.0000000000000001_16)print *,108
z=rrspacing(3.0_16)
if (abs(y8-z)> 0.0000000000000001_16)print *,109
z=scale(3.0_16,2)
if (abs(y9-z)> 0.0000000000000001_16)print *,110
z=set_exponent(3.0_16,1)
if (abs(ya-z)> 0.0000000000000001_16)print *,111
z=3.0_16**4.0_16
if (abs(yb-z)> 0.0000000000000001_16)print *,112
z=anint(12345678._16,16)
if (abs(yc-z)> 0.0000000000000001_16)print *,113

print *,'pass'
end
