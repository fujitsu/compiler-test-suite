real, dimension(1:10) :: a,b
real, parameter :: ans  =166.666687
real, parameter :: diff =  0.00002
real r
integer c

a = (/(real(i)/1.1,i=1,10)/)
b = (/(real(i)/2.1,i=1,10)/)
c = int(a(2))

call sub(a,b,c,r)

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end

subroutine sub(a,b,c,r)
real, dimension(1:10) :: a,b
real r
integer c

r = dot_product(a(1:10:c),b(1:10:c))

end subroutine
