program main
real,dimension(1:10) :: a
complex,dimension(1:10) :: c
logical,dimension(1:10) :: m
real,parameter::ans =1.79999995
real,parameter::diff=0.0000002
real r1,r
complex c1
a = (/(real(i)/real(i*i),i=1,10)/)
c = (/(cmplx(real(i)/10.0,real(i)/real(i*i)),i=1,10)/)
m = (/(mod(i,3)==0,i=1,10)/)

r1 = sum(a,mask=m)
c1 = sum(c,mask=m)
r = r1 + real(c1) - imag(c1)

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
