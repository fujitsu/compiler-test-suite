program main
complex,parameter::ans=(10.4499989,49.4999962)
real,parameter::diff=               0.000004
complex,dimension(1:10)::a
complex r

a = (/(cmplx(real(i)*0.19,real(i)*0.9),i=1,10)/)
r  = sum(a)
if (abs(real(r)-real(ans))<=diff .and. abs(imag(r)-imag(ans))<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
