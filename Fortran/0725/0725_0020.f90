program main
real,dimension(1:10)::a,b
real,parameter::ans =1285.58301
real,parameter::diff=   0.000016

a = (/(real(i)*9.09090909,i=1,10)/)
b = (/(real(i)*7.07070707,i=1,10)/)

r=dot_product(a(10:10),b(2:2))
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end
