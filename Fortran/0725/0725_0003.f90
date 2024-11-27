real, dimension(1:10) :: a,b,c,d

a = 1.1
b = 2.1
c = 2.1
d = 1.1

if (abs(dot_product(a,b)-dot_product(c,d)) .lt. 0.000002) then
  print *,'ok'
else
  print *,'ng'
endif

end
