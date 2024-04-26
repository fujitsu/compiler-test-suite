character(len=3),target :: trg(10,10,10)
character(len=:), pointer :: ptr(:,:,:)
integer :: i=2

trg = 'abc'
ptr=>trg
if(is_contiguous(ptr)) print*,'pass'
if(is_contiguous(ptr(1:,:10,:)) .neqv. .true.) print*,201
if(is_contiguous(ptr(:,:10,:)) .neqv. .true.) print*,202
if(is_contiguous(ptr(:,:8,:)) .neqv. .false.) print*,203
if(is_contiguous(ptr(:,:10,:)(:)) .neqv. .true.) print*,204
if(is_contiguous(ptr(:,:10,:)(1:)) .neqv. .true.) print*,205
if(is_contiguous(ptr(:,:,:)(1:3)) .neqv. .true.) print*,206
if(is_contiguous(ptr(:,:,:)(2:3)) .neqv. .false.) print*,207
if(is_contiguous(ptr(:,:,:)(i:3)) .neqv. .false.) print*,208
if(is_contiguous(ptr(i-1:,:10,:)(i-1:3)) .neqv. .true.) print*,209
end
