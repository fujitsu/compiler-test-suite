program main
integer,dimension(1:10) :: a,b

a = (/(real(i)*real(i),i=1,10)/)
b = (/(real(i),i=1,10)/)
i = dot_product(a(1:0:1),b(1:0:1))

if (i==0) then
  print *,'ok'
else
  print *,'ng'
endif
end
