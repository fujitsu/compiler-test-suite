program main
integer,parameter::N=10
real,dimension(1:N)::a,b
real r
real,parameter :: ans =18.0426464
real,parameter :: diff= 0.000002

a = (/(real(i)/3.1,i=1,N)/)
b = (/(real(i)/5.9,i=1,N)/)
r = dot_product(a(1:9:1),b(2:10:1))

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end
