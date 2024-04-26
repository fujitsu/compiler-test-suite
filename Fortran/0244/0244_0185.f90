character(len=3),target :: trg(10,10,10)
character(len=:), pointer :: ptr(:,:,:)
integer :: i=2

trg = 'abc'
ptr=>trg
call sub(ptr)

contains
subroutine sub(dptr)
character(len=:),pointer::dptr(:,:,:)
if(is_contiguous(dptr)) print*,'pass'
if(is_contiguous(dptr(1:,:10,:)) .neqv. .true.) print*,201
if(is_contiguous(dptr(:,:10,:)) .neqv. .true.) print*,202
if(is_contiguous(dptr(:,:8,:)) .neqv. .false.) print*,203
if(is_contiguous(dptr(:,:10,:)(:)) .neqv. .true.) print*,204
if(is_contiguous(dptr(:,:10,:)(1:)) .neqv. .true.) print*,205
if(is_contiguous(dptr(:,:,:)(1:3)) .neqv. .true.) print*,206
if(is_contiguous(dptr(:,:,:)(2:3)) .neqv. .false.) print*,207
if(is_contiguous(dptr(:,:,:)(i:3)) .neqv. .false.) print*,208
if(is_contiguous(dptr(i-1:,:10,:)(i-1:3)) .neqv. .true.) print*,209
end subroutine
end
