subroutine s1(n,k)
type x
  character(:),pointer::x1
  character(:),pointer::x2(:)
end type
type(x)::yy(3)
character(:),pointer::p1,p2(:)
allocate(character::p1)
allocate(character::p2(2))
p1(:1)='1'
p2(2)(:1)='1'
if (p1/='1')print *,201
if (p2(2)/='1')print *,202
allocate(yy(2)%x1,source='1')
yy(n)%x1(1:n-1)='1'
if (yy(2)%x1/='1')print *,'error-0'
allocate(yy(2)%x2(5:5),source='1')
yy(n)%x2(k)(1:n-1)='1'
if (yy(2)%x2(5)/='1')print *,'error-1'
if (yy(2)%x2(k)/='1')print *,'error-2'
end
call s1(2,5)
print *,'pass'
end
