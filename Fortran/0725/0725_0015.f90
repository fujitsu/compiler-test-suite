program main
integer,dimension(1:10)::a,b

a = (/(real(i),i=1,10)/)
b = a
if (dot_product(a(1:0),b(1:0))==0) then
  print *,'ok'
else
  print *,'ng',dot_product(a(1:0),b(1:0))
endif
end
