character(len=4),pointer,contiguous::aptr(:,:,:)
character(len=4),pointer::aptr2(:,:,:)
character(len=4),target :: trg(10,10,10)

trg='hags'
trg(:,:,2:6) = 'rags'

aptr=>trg(:,:,2:6)
aptr2 => aptr

call sub(aptr2)

contains
subroutine sub(dptr)
character(len=4)::dptr(:,:,:)
if(is_contiguous(dptr(:,4,:)(:)) .eqv. .false.) then
 if(is_contiguous(dptr(:,:,:)(2:3)) .neqv. .false.) print*,101
 print*,'pass'
else
 print*,101
endif
end subroutine
end
