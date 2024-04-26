type tt
 integer,pointer :: ptr2(:)
 integer,pointer,contiguous :: cptr2(:)
end type

type(tt) :: obj
integer,target :: arr(5)=2
integer, pointer :: ptr(:)
integer, pointer :: ptr4(:)
contiguous :: ptr4
integer, pointer,contiguous :: ptr3(:)

ptr=>arr
ptr3=>arr
obj%ptr2 => arr
obj%cptr2 => arr

if(is_contiguous(array=arr) .eqv. .true.) print*,'pass'
if(is_contiguous(array=ptr(::1)) .neqv. .true.) print*,100
if(is_contiguous(array=ptr3) .neqv. .true.) print*,101
if(is_contiguous(array=ptr(::2)) .neqv. .false.) print*,102
if(is_contiguous(array=obj%ptr2(:)) .neqv. .true.) print*,103
if(is_contiguous(array=obj%cptr2) .neqv. .true.) print*,104
if(is_contiguous(array=obj%ptr2([2,3])) .neqv. .false.) print*,105
if(is_contiguous(array=ptr4) .neqv. .true.) print*,106
end
