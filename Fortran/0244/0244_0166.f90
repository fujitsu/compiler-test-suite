type tt
 integer :: jk=2
end type

type(tt),pointer::aptr(:,:,:)
type(tt),pointer::aptr2(:,:,:)
type(tt),target :: trg(1:10,1:10,1:10)

trg(:,:,4:8) = tt(3)

aptr=>trg(:,:,4:8)
aptr2 => aptr

if(is_contiguous(aptr(1:,:10,:)) .neqv. .true.) print*,201
if(is_contiguous(aptr(:,:10,:)) .neqv. .true.) print*,202
if(is_contiguous(aptr2(1:,:10,:)) .neqv. .true.) print*,203,'right???'
if(is_contiguous(trg(:10,1:,:)) .neqv. .true.) print*,204
call sub(aptr2)

contains
subroutine sub(dptr)
type(tt)::dptr(:,:,:)
if(is_contiguous(dptr(:,4,:)) .eqv. .false.) then
 if(is_contiguous(dptr(:,:,:))) print*,'pass'
else
 print*,101
endif
end subroutine
end
