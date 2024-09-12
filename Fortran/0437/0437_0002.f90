MODULE m1
type xx
integer::xx1=10
integer,allocatable:: xx2(:)
end type
type x
 integer:: x1=10
 type(xx),allocatable:: x2(:)
end type
contains
  ELEMENTAL FUNCTION ff( d ) RESULT( r ) 
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d 
  END FUNCTION
  ELEMENTAL FUNCTION fff( d ) RESULT( r ) 
    TYPE(xx), INTENT(IN) :: d
    TYPE(xx) :: r
   r=d 
  END FUNCTION
end
subroutine s1
use  m1
type (xx):: vv(2)
integer:: q(2)=[1,2]
vv(2)= xx( 11, q )
call sxx( vv(2) )
end
do k=1,1
call s1
end do
print *,'pass'
end
subroutine sx(w)
use m1
type(x):: w
if (w%x1/=1)print *,1011
if (.not.allocated( w%x2)) print *,1012
if (size(w%x2)/=2) print *,1013
call sxx(w%x2(1))
call sxx(w%x2(2))
end
subroutine sxx(w)
use m1
type(xx):: w
if (w%xx1/=11)print *,101
if (any(w%xx2/=[1,2]))print *,102
if (size(w%xx2)/=2)print *,103
deallocate(w%xx2)
end

