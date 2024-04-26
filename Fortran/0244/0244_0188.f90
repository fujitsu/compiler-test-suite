character(len=3),target :: trg(13,13,13)
character(len=:), pointer :: ptr(:,:,:)
integer :: i=2

trg = 'abc'
ptr=>trg
call sub(ptr)

contains
subroutine sub(dptr)
character(len=*)::dptr(3,12,*)
if(is_contiguous(dptr)) print*,'pass'
if(is_contiguous(dptr(1:,:10,3)) .neqv. .true.) print*,201
if(is_contiguous(dptr(:,:10,3)) .neqv. .true.) print*,202
if(is_contiguous(dptr(3,:8,3)) .neqv. .false.) print*,203
if(is_contiguous(dptr(:,:10,3)(:)) .neqv. .true.) print*,204
if(is_contiguous(dptr(:,:10,3)(1:)) .neqv. .true.) print*,205
if(is_contiguous(dptr(:,:,3)(1:3)) .neqv. .true.) print*,206
if(is_contiguous(dptr(:,:,3)(2:3)) .neqv. .false.) print*,207
if(is_contiguous(dptr(:,:,3)(i:3)) .neqv. .false.) print*,208
if(is_contiguous(dptr(i-1:,:10,3)(i-1:3)) .neqv. .true.) print*,209
end subroutine
end
