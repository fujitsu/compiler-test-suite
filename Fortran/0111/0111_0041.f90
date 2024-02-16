integer(2),parameter::x=2**15-1
integer(2),parameter::y=-2**15
complex(4)::c=(x,y)
if ( abs(real(c)-32767) < 0.00001 ) then
  print *,'pass'
else
  print *,'ng'
endif
end
