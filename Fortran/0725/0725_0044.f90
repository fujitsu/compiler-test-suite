program main
complex,dimension(1:10)::a,b
integer,dimension(1:10)::v,t
complex,parameter :: ans =(4416.72021,2447.35986)
real,parameter :: diff=0.00025
complex r

a = (/(cmplx(real(k)*1.3,real(k)*1.1),k=1,10)/)
b = (/(cmplx(real(k)*1.1,real(k)*2.9),k=1,10)/)
v = (/(i,i=1,10)/)
t = (/(10-i+1,i=1,10)/)
i = int(real(a(1)))*9
j = int(real(a(1)))
k = -j

r = dot_product(a(v(i:j:k)),b(t(i+1:j+1:k)))
r = r + dot_product(a(v(10:8:-1)),b(t(5:3:-1)))
r = r + dot_product(a(v(10:1:-1)),b(t(10:1:-1)))
r = r + dot_product(a(v(10:3:-1)),b(t(10:3:-1)))
r = r + dot_product(a(v(10:3:-1)),b(t(10:3:-1)))

if (abs((real(r)-real(ans))/real(r))<=diff .and. abs((imag(r)-imag(ans))/imag(r))<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
