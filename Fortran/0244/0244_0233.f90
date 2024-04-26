character(len=3),pointer,contiguous::aptr(:,:,:)
character(len=3),pointer::aptr2(:,:,:)
character(len=3),target :: trg(10,8,7)

trg='xxx'
trg(:,:,2:6) = 'abc'

aptr=>trg(:,:,2:6)
aptr2 => aptr

if(is_contiguous(aptr2)) print*,'pass'
if(is_contiguous(aptr2(:,:,:)(:)) .neqv. .true.) print*,101
if(is_contiguous(aptr2(:,:,:)(2:3)) .neqv. .false.) print*,102
if(is_contiguous(aptr2(:,:,:2)(:)) .neqv. .true.) print*,103
if(is_contiguous(aptr2(:,2:,:2)(2:3)) .neqv. .false.) print*,104
if(is_contiguous(aptr2(:,:,2)) .neqv. .true.) print*,105
call sub(aptr2)

contains
subroutine sub(dptr)
character(len=3)::dptr(:,:,:)
if(is_contiguous(dptr(:,:,:)(:)) .neqv. .true.) print*,201
if(is_contiguous(dptr(:,:,:)(2:3)) .neqv. .false.) print*,202
if(is_contiguous(dptr(:,:,:2)(:)) .neqv. .true.) print*,203
if(is_contiguous(dptr(:,2:,:2)(2:3)) .neqv. .false.) print*,204
if(is_contiguous(dptr(:,:,2)) .neqv. .true.) print*,205
end subroutine
end
