program main
complex,dimension(1:10)::a,b
integer,dimension(1:10)::v,t
complex,parameter :: ans =(1016.40009,563.199951)
real,parameter :: diff=0.00015
complex r

a = (/(cmplx(real(k)*1.3,real(k)*1.1),k=1,10)/)
b = (/(cmplx(real(k)*1.1,real(k)*2.9),k=1,10)/)
v = (/(i,i=1,10)/)
t = (/(10-i+1,i=1,10)/)
i = int(real(a(1)))
j = i*10
k = i

r = dot_product(a(v(i:j:k)),b(t(i:j:k)))

if (abs(real(r)-real(ans))<=diff .and. abs(imag(r)-imag(ans))<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end
