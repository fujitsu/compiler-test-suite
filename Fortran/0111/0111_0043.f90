integer(8),parameter::x=9223372036854775807_8
integer(8),parameter::y=-9223372036854775808_8
complex::c=(x,y)
if ( abs(real(c)-9223372036854775807_8) < 0.00001 ) then
  print *,'pass'
else
  print *,'ng'
endif
end
