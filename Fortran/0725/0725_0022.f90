program main
real,dimension(1:100)::a,b
real,parameter::ans =30340.0000
real,parameter::diff=    0.0001

a = (/(real(i)*1.3,i=1,100)/)
b = (/(real(i)/1.3,i=1,100)/)

r=dot_product(a(1:40),b(11:50))
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end
