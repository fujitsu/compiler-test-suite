real, dimension(1:10) :: a,b
real r
integer d1,d2,d3,d4,d5,d6
real, parameter :: ans = 12.5000010
real, parameter :: diff=  0.000001

a = (/(real(i)/3.1,i=1,10)/)
b = (/(real(10-i+1)/3.2,i=1,10)/)

d1=3
d2=9
d3=2
d4=2
d5=8
d6=2

call sub(a(2:9),b(2:9),r,d1,d2,d3,d4,d5,d6)

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end

subroutine sub(a,b,r,i,j,k,l,m,n)
real, dimension(2:9) :: a,b
real r
integer i,j,k,l,m,n

r = dot_product(a(i:j:k),b(l:m:n))

end subroutine
