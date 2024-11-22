program main
complex,dimension(1:10)::a,b
integer,dimension(1:10)::v,w
complex r1,r2,r3
real r
real,parameter::ans=121.733955
real,parameter::diff=0.000008

a = (/(cmplx(real(i)/2.1,real(i)*0.9),i=1,10)/)
v = (/(10-i+1,i=1,10)/)
b = (/(cmplx(real(i)/2.3,real(i)*1.1),i=1,10)/)
w = (/(mod(i,5)+1,i=1,10)/)
r1 = sum(a(v))
r2 = sum(b(w))
r3 = r1+r2
r  = real(r3)+imag(r3)
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end