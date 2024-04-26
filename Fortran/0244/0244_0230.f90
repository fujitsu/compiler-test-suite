character(len=3),pointer,contiguous::aptr(:,:,:)
character(len=3),pointer::aptr2(:,:,:)
character(len=3),target :: trg(10,8,7)

trg='xxx'
trg(:,:,2:6) = 'abc'

aptr=>trg(:,:,2:6)

call sub(aptr)

contains
subroutine sub(dptr)
character(len=3),target::dptr(:,:,:)

aptr2=>dptr
if(is_contiguous(aptr2)) print*,'pass'
if(is_contiguous(aptr2(:,:,:)(:)) .neqv. .true.) print*,101
if(is_contiguous(aptr2(:,:,:)(2:3)) .neqv. .false.) print*,102
if(is_contiguous(aptr2(:,:,:2)(:)) .neqv. .true.) print*,103
if(is_contiguous(aptr2(:,2:,:2)(2:3)) .neqv. .false.) print*,104
if(is_contiguous(aptr2(:,:,2)) .neqv. .true.) print*,105
end subroutine
end
