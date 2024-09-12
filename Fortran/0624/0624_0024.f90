implicit real(16)(z)
real(16),parameter::yb=3.0_16**4.0_16
z=3.0_16**4.0_16
if (abs(yb-z)> 0.0000000000000001_16)print *,112
print *,'pass'
end
