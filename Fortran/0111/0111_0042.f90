integer(4),parameter::x=2147483647
integer(4),parameter::y=-2147483648
complex(4)::c=(x,y)
if ( abs(real(c)-2147483647) < 0.00001 ) then
  print *,'pass'
else
  print *,'ng'
endif
end
