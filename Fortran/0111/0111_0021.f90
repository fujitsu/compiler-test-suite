real(4),parameter::a=3.0
integer(2),parameter::b=4.0
if ( kind((a,b)) == 4 ) then
  print *,'pass'
else 
  print *,'ng kind =',kind((a,b))
endif
end
