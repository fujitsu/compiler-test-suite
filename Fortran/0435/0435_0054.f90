module m1
type x
  integer:: a
  integer,allocatable::z(:)
end type
contains
  ELEMENTAL FUNCTION f( d ) RESULT( r ) 
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d 
  END FUNCTION 
end
subroutine s1
use m1
  TYPE(x) :: v(2),y,yy(2),vv(4)
y=f(x(2,[1,2]))
yy=[(f(x(2,[1,2])),n=1,2)]
v=[(f(y),n=1,2)]
if (v(1)%a/=2) print *,10611
if (v(2)%a/=2) print *,10612
if (any(v(1)%z/=[1,2])) print *,10121,v(1)%z
if (any(v(2)%z/=[1,2])) print *,10621
if (size(v(2)%z)/=2) print *,10631
vv=[(f(yy),n=1,2)]
if (vv(1)%a/=2) print *,10611
if (vv(2)%a/=2) print *,10612
if (vv(3)%a/=2) print *,10612
if (vv(4)%a/=2) print *,10612
if (any(vv(1)%z/=[1,2])) print *,10121,vv(1)%z
if (any(vv(2)%z/=[1,2])) print *,10621
if (any(vv(3)%z/=[1,2])) print *,10621
if (any(vv(4)%z/=[1,2])) print *,10621
if (size(vv(1)%z)/=2) print *,10631
if (size(vv(2)%z)/=2) print *,10631
if (size(vv(3)%z)/=2) print *,10631
if (size(vv(4)%z)/=2) print *,10631
end
do k=1,100
call s1
end do
print *,'pass'
end
