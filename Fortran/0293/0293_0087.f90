subroutine s1(n,k)
type x
  character::xx(5)
end type
type(x)::yy(3)
character(:),pointer::p1,p2(:)
allocate(character::p1)
allocate(character::p2(2))
p1(:1)='1'
p2(2)(:1)='1'
if (p1/='1')print *,201
if (p2(2)/='1')print *,202
yy(n)%xx(k)(1:n-1)='1'
if (yy(2)%xx(5)/='1')print *,'error-1'
if (yy(2)%xx(k)/='1')print *,'error-2'
end
call s1(2,5)
print *,'pass'
end
