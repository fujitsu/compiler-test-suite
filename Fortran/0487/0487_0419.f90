module m1
type ty
character(len=2) :: cc(3,3)
end type ty
contains 
subroutine sub(dmy,k)
type(*),optional :: dmy(..)
if (present(dmy)) then
if(is_contiguous(dmy) .neqv. .FALSE.)print*,"101"
endif
if (present(dmy)) then
if (k/=1) print *,301
else
if (k/=0) print *,321
endif
end subroutine sub
end module m1

use m1
type(ty)::obj
call sub(             k=0)
call sub(obj%cc(1,1:3),k=1)
print*,"pass"
end
