program main
real,dimension(1:100)::a,b,c,d
logical,dimension(1:100)::m
real,parameter::ans =485780.875
real,parameter::diff=     0.063

a = (/(real(i)*1.11,i=1,100)/)
b = (/(real(i)*0.99,i=1,100)/)
c = (/(real(i)*1.41,i=1,100)/)
d = (/(real(i)*0.23,i=1,100)/)
m = (/(mod(i,3)==0,i=1,100)/)
r1 = dot_product(a,b)
r2 = sum(c,mask=m)
r3 = dot_product(c,d)
r4 = sum(a,mask=m)

r = r1+r2+r3+r4
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
