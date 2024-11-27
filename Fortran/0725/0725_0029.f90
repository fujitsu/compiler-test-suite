program main
real,dimension(1:100)::a,b
integer n
real r
real,parameter::ans= 50.1281586 
real,parameter::diff= 0.000008

a = (/(real(i)*0.111,i=1,100)/)
b = (/(real(i)*0.119,i=1,100)/)
n = int(a(1)*220)-2

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
