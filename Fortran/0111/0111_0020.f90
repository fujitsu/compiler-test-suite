integer(8),parameter::a=4.0
real(8),parameter::b=3.0
if ( kind((a,b)) == 8 ) then
  print *,'pass'
else 
  print *,'ng kind =',kind((a,b))
endif
end
