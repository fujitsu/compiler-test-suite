real, dimension(1:10) :: a,b
real r
real, parameter::ans = 706.799988
real, parameter::diff=   0.00007
integer d1,d2,d3,d4,d5,d6

a = (/(real(i)*3.1,i=1,10)/)
b = (/(real(i)*1.2,i=1,10)/)

d1=1
d2=10
d3=2
d4=2
d5=10
d6=2

call sub(a,b,r,d1,d2,d3,d4,d5,d6)

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r,ans
endif
end

subroutine sub(a,b,r,i,j,k,l,m,n)
real, dimension(1:10) :: a,b
real r
integer i,j,k,l,m,n

r = dot_product(a(i:j:k),b(l:m:n))

end subroutine
