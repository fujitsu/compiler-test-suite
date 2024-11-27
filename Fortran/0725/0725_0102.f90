program main
real,dimension(1:10,1:10) :: a
complex,dimension(1:10,1:10) :: c
real,parameter::ans =505.000000 
real,parameter::diff=  0.000002
real r1,r
complex c1
a = reshape((/(real(i)/real(i*i),i=1,100)/),(/10,10/))
c = reshape((/(cmplx(real(i)/10.0,real(i)/real(i*i)),i=1,100)/),(/10,10/))

r1 = sum(sum(a,dim=2))
c1 = sum(sum(c,dim=2))
r = r1 + real(c1) - imag(c1)
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
