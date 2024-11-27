real, dimension(1:10) :: a,b
real, parameter :: rans = 291.666626
real, parameter :: rgos =   0.000031

a = (/(real(i)/1.2,i=1,10)/)
b = (/(real(i)/1.1,i=1,10)/)

r = dot_product(a,b)

if (abs(r-rans) <= rgos) then
  print *,'ok'
else
  print *,'ng'
  print *,r
endif

end
