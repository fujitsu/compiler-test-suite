real, dimension(1:10) :: a,b
real, parameter :: ans= 11.0
real, parameter :: diff= 0.000001

a = (/(real(i)/3.0D0,i=1,10)/)
b = (/(real(i)/5.0D0,i=1,10)/)
r = dot_product(a(1:10:2),b(1:10:2))

if (abs(ans-r)<=diff) then
  print *,'ok'
else
  print *,'ng',r,'!=',ans
endif

end
