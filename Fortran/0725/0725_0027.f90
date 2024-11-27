program main
real,dimension(1:10)::a,b
integer n
real r
real,parameter::ans = 17.5601997
real,parameter::diff=  0.001

a = (/(real(i)*1.11,i=1,10)/)
b = (/(real(i)*1.13,i=1,10)/)
n = int(a(1))*3

call sub(r,a,b,n)

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end

subroutine sub(r,a,b,n)
real r
real,dimension(1:10)::a,b
integer n

r = dot_product(a(1:n),b(1:n))
end subroutine
