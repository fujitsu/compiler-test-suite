character,pointer::aptr(:,:,:)
character,pointer::aptr2(:,:,:)
character,target :: trg(2:5,2:5,2:6)='a'

trg='a'
trg(:,:,3:4) = 'b'

aptr=>trg(:,:,3:4)
aptr2 => aptr

if(is_contiguous(aptr(1:,:4,:)) .neqv. .true.) print*,2011
if(is_contiguous(aptr(:,:4,:)) .neqv. .true.) print*,2012
if(is_contiguous(aptr2(1:,:4,:)) .neqv. .true.) print*,202
if(is_contiguous(trg(:5,2:,:)) .neqv. .true.) print*,203
call sub(aptr2)

contains
subroutine sub(dptr)
character::dptr(:,:,:)
if(is_contiguous(dptr(:,4,:)) .eqv. .false.) then
 if(is_contiguous(dptr(:,:,:))) print*,'pass'
else
 print*,101
endif
end subroutine
end
