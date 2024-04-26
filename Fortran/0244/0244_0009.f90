module mod1
type tt
 integer,contiguous,pointer::dd(:,:)
end type

type(tt) :: obj
end module

use mod1
integer,target :: trg(10,10)=9

call sub(trg(:,:))

contains
subroutine sub(dptr)
integer,contiguous,target::dptr(:,:)

obj%dd=>dptr

if(is_contiguous(obj%dd) .neqv. .true.) print*,301,'obj%dd'
call sub2(obj%dd)
print*,'pass'
end subroutine

subroutine sub2(dptr)
integer::dptr(2,4)
print*,dptr(2,3)
end subroutine
end
