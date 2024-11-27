real, dimension(1:10) :: a,b
real r
real,parameter::ans =1201.19995
real,parameter::diff=   0.00001
integer c,d

a = (/(real(i)*1.1,i=1,10)/)
b = (/(real(i)*1.3,i=1,10)/)
c = int(a(1))
d = int(b(1))

call sub(a,b,c,d,r)

if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end

subroutine sub(a,b,c,d,r)
real, dimension(1:10) :: a,b
real r
integer c,d

r = dot_product(a(1:10:c)+b(1:10:c),b(1:10:d))

end subroutine
