module mod1
integer,contiguous,pointer::dd(:,:)
end module

use mod1
integer,target :: trg2(10,10)=9


integer::i=1
integer,target :: trg(10)

trg=2
trg(2:6) = 3

call ss(trg(2:6:i),trg(2:6:i),trg2(:,:))

contains
subroutine ss(app,aptr,dptr)
integer,contiguous::aptr(:)
integer::app(:)
integer,contiguous,target::dptr(:,:)

dd=>dptr

if(is_contiguous(dd) .neqv. .true.) print*,301,'dd'

call sub(app,aptr,dd)
print*,'pass'
end subroutine

subroutine sub(dmy1,dptr, dmy2)
integer::dmy1(5),dptr(5),dmy2(2,4)
print*,dmy2(2,3)
if(all(dptr==3) .and. all(dmy1==3)) print*,'pass'
end subroutine
end
