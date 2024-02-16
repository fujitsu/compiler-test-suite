complex,pointer::p
complex,target::x
real,parameter::n=3.0
complex::c(2)
p=>x
p=(4.00,n)
c=(/x,p/)
if ( abs(real(c(1))-4.0) < 0.00001 ) then
  print *,'pass'
else
  print *,'ng'
endif
end
