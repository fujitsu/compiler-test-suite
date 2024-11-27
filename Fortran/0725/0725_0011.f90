real, dimension(1:10) :: a,b
real, parameter :: rans = 2715.99585
real, parameter :: rgos =    0.00025

a = (/(real(i)*real(i),i=1,10)/)
b = (/(real(i)*2.33333,i=1,10)/)

a(2:10) = a(1:9) + 1.0
r = dot_product(a(2:10),b(10:2:-1))

if (abs(r-rans) <= rgos) then
  print *,'ok'
else
  print *,'ng'
  print *,r
endif

end
