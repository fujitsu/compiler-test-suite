real,dimension(1:100) :: a,b
real,parameter :: ans=29
real r1,r2

a = (/(real(i)/100.0,i=1,100)/)
b = (/(real(i)/100.0,i=1,100)/)

call sub1(a,b,r1)
call sub2(a,b,r2)

if (int(r1-r2)==ans) then
  print *,'ok'
else
  print *,'ng',r1,r2
endif
end

subroutine sub1(a,b,r)
real,dimension(1:100) :: a,b
real r,r1,r2

r1 = dot_product(a,b)
r2 = dot_product(a,b)

r  = r1 + r2
end subroutine

subroutine sub2(a,b,r)
real,dimension(1:100) :: a,b
real r,r1,r2

r1 = dot_product(a(1:100),b(1:100))
r2 = dot_product(a(2:50),b(3:51))

r  = r1 + r2
end subroutine
