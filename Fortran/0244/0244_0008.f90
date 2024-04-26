module mod1
integer,contiguous,pointer::dd(:,:)
end module

use mod1
integer,target :: trg(10,10)=9

call sub(trg(:,:))

contains
subroutine sub(dptr)
integer,contiguous,target::dptr(:,:)

dd=>dptr

if(is_contiguous(dd) .neqv. .true.) print*,301,'dd'
call sub2(dd)
print*,'pass'
end subroutine

subroutine sub2(dptr)
integer::dptr(2,4)
print*,dptr(2,3)
end subroutine
end
