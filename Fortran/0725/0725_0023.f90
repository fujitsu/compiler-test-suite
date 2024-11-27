program main
real,dimension(1:100)::a,b
real,parameter::ans =212082.625
real,parameter::diff=     0.032

a = (/(real(i)/1.10111,i=1,100)/)
b = (/(real(i)/1.23333,i=1,100)/)

r=dot_product(a(1:90),b(11:100))
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end
