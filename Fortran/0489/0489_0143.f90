module m1
type :: ty
integer :: ii
end type 

type, extends(ty) :: ty1
integer :: jj
end type 

interface add
subroutine sub1(aa,ii)
import ty1
class(ty1)  :: aa
integer, optional  :: ii
end subroutine

subroutine sub2(xx, rr)
import ty1
class(ty1),allocatable  :: xx
real :: rr
end subroutine
end interface

end module 

use m1
type(ty1),pointer :: objty
allocate( objty)
objty%ii = 10
call add(objty,10)
if (objty%ii/=10) print *,1010
print *,'pass'
end

subroutine sub1(aa,ii)
use m1
class(ty1)  :: aa
integer, optional  :: ii
if (aa%ii/=10) print *,101
if (ii/=10) print *,10
end subroutine
