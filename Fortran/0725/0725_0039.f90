program main
complex,dimension(1:10)::a,b
complex,parameter :: ans =(1778.7,985.6)
real,parameter :: diff=0.0005
complex r

a = (/(cmplx(real(k)*1.3,real(k)*1.1),k=1,10)/)
b = (/(cmplx(real(k)*1.1,real(k)*2.9),k=1,10)/)

r = dot_product(a,b)

if (abs(real(r)-real(ans))<=diff .and. abs(imag(r)-imag(ans))<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
