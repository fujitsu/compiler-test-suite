type tt
 integer,pointer::ptr(:)
end type

type,extends(tt) :: tt2
 integer :: i2
end type

type tt3
 type(tt2) :: cmp
end type

type(tt3) :: obj

integer :: i=1, j=2

allocate(obj%cmp%ptr(10))
obj%cmp%ptr=2
if(is_contiguous(obj%cmp%ptr)) print*,'pass'

if(is_contiguous(obj%cmp%ptr) .neqv. .true.) print*,101,'obj%cmp%ptr'
if(is_contiguous(obj%cmp%ptr(:)) .neqv. .true.) print*,102,'obj%cmp%ptr(:,:,:)'
if(is_contiguous(obj%cmp%ptr(2:)) .neqv. .true.) print*,106,'obj%cmp%ptr(:,:,2:)'
if(is_contiguous(obj%cmp%ptr(::2)) .neqv. .false.) print*,111,'obj%cmp%ptr(:,:,::2)'
if(is_contiguous(obj%cmp%ptr(::i)) .neqv. .true.) print*,112,'obj%cmp%ptr(:,:,::i)'
if(is_contiguous(obj%cmp%ptr(::j)) .neqv. .false.) print*,113,'obj%cmp%ptr(:,:,::j)'
if(is_contiguous(obj%cmp%ptr([1,2,3])) .neqv. .false.) print*,113,'obj%cmp%ptr(:,:,::j)'
end
