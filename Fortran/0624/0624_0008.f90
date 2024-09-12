implicit real(16)(z)
real(16),parameter::y=anint(12345678._16)
z=anint(12345678._16)
if (abs(y-z)> 0.0000000000000001_16)print *,113

print *,'pass'
end
