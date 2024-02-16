integer(2),parameter::a=4.0
integer(8),parameter::b=3.0
if ( kind((a,b)) == 4 ) then
  print *,'pass'
else 
  print *,'ng kind =',kind((a,b))
endif
end
