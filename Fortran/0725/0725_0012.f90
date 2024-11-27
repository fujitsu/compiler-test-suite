real, dimension(1:10) :: a,b
real r
real, parameter :: ans = 408.630005
real, parameter :: diff=   0.001
integer c,d

a = (/(real(mod(i,2)+1)*3.3,i=1,10)/)
b = (/(real(mod(i,3)+1)*3.3,i=1,10)/)
c = int(a(1))/3
d = int(b(1))/3
call sub(a,b,c,d,r)

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end

subroutine sub(a,b,c,d,r)
real, dimension(1:10) :: a,b
integer c,d
real r

a(2:10)=a(1:9)+1.0
b(2:10)=b(1:9)+1.0
r = dot_product(a(10:c:-1),b(10:d:-1))

end subroutine
