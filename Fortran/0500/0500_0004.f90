MODULE m1
type xx
integer::xx1=10
integer,allocatable:: xx2(:)
end type
type x
 integer:: x1=10
 type(xx),allocatable:: x2(:)
end type
end
subroutine s1
use  m1
integer:: q(2)=[1,2]
call sx( x( 1 , [xx( 11, q )]  ) ) 
end
call s1
print *,'pass'
end
subroutine sx(w)
use m1
type(x):: w
if (w%x1/=1)print *,1011
if (.not.allocated( w%x2)) print *,1012
if (size(w%x2)/=2 .and. size(w%x2)/=1) print *,1013
end
