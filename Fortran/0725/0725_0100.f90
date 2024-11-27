program main
complex,dimension(1:10)::a,b
integer,dimension(1:10)::v,w
complex r1,r2,r3
real    r
real,parameter::ans=101.177078
real,parameter::diff=0.00001
integer i,j,k

a = (/(cmplx(real(i)/2.1,real(i)/1.1),i=1,10)/)
v = (/(10-i+1,i=1,10)/)
b = (/(cmplx(real(i)/2.3,real(i)/1.3),i=1,10)/)
w = (/(mod(i,5)+1,i=1,10)/)
i=v(2)
j=v(10)
k=-2
r1 = sum(a(v(i:j:k)))
r2 = sum(a(v(i:j:k))+b(w(i:j:k)))
r3 = r1 + r2
r  = real(r3)+imag(r3)
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
