integer,parameter::a=3 ; integer,parameter::b=4 ; complex::c=(a&
,b)
if ( c == (3,4) ) then
  print *,'pass'
else
  print *,'ng'
endif
end
