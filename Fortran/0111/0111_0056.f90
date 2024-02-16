integer,parameter::a=1
real,parameter::b=5
complex::c=(a,b),d=(a,a),e=(b,b),f=(b,a)

if ( real(c) == 1 ) then
  print *,'pass'
else
  print *,'ng'
endif
end
