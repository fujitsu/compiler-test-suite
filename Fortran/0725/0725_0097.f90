program main
complex,parameter::ans=(6.83999920,39.5999985)
real,parameter::diff=               0.000004
complex,dimension(1:10)::a
complex r

a = (/(cmplx(real(i)*0.19,real(i)*1.1),i=1,10)/)
i = int(imag(a(1)))*8
r  = sum(a(1:i))
if (abs(real(r)-real(ans))<=diff .and. abs(imag(r)-imag(ans))<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
