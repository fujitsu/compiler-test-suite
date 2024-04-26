type tt
 integer :: jk=2
end type

type(tt),pointer::aptr(:,:,:)
type(tt),pointer::aptr2(:,:,:)
type(tt),target :: trg(-10:-1,-10:-1,-10:-1)

trg(:,:,-8:-4) = tt(3)

aptr=>trg(:,:,-8:-4)
aptr2 => aptr

if(is_contiguous(aptr) .neqv. .true.) print*,200
if(is_contiguous(aptr(1:,:10,:)) .neqv. .true.) print*,201
if(is_contiguous(aptr(:,:10,:)) .neqv. .true.) print*,202
if(is_contiguous(aptr2(1:,:10,:)) .neqv. .true.) print*,203
if(is_contiguous(trg(:-1,-10:,:)) .neqv. .true.) print*,204
if(is_contiguous(trg(:-1:1,-10:,::1)) .neqv. .true.) print*,205
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
