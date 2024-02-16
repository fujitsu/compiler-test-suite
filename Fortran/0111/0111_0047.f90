real(4),parameter::a=1.0
real(8),parameter::b=2.0
complex::c=(a,b)
if ( abs(a-1.0) < 0.00001 ) then
  print *,'pass'
else
print *,c
endif
end
