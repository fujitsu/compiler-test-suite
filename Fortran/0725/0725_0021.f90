program main
real,dimension(1:100)::a,b
real,parameter::ans =45.4545441
real,parameter::diff= 0.0000001

a = (/(real(i)/1.1,i=1,100)/)
b = (/(real(i)/1.3,i=1,100)/)

r=dot_product(a(6:8),b(2:4))
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end
