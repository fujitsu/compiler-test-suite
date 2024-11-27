program main
real,dimension(1:100)::a,b
integer n
real r
real,parameter::ans =182.411087 
real,parameter::diff=  0.000085

a = (/(real(i)*0.1234567,i=1,100)/)
b = (/(real(i)*0.9876543,i=1,100)/)
n = int(a(1)*120)+2

call sub(r,a,b,n)

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end

subroutine sub(r,a,b,n)
real r
real,dimension(1:n)::a,b
integer n

r = dot_product(a(1:n),b(1:n))
end subroutine
