type rt
 integer :: rii = 89
end type

type, extends(rt) :: rt2
 integer :: i2 =67
end type

type tt
 class(rt),pointer::ptr(:)
end type

type,extends(tt) :: tt2
 integer :: i2
end type

type tt3
 type(tt2) :: cmp
end type

class(*),pointer :: obj
type(tt3),target :: tobj

integer :: i=1, j=2

type(rt2) :: src(10)

obj=>tobj

select type(obj)
class is(tt3)
allocate(obj%cmp%ptr,source=src)

if(is_contiguous(obj%cmp%ptr)) print*,'pass'

if(is_contiguous(obj%cmp%ptr) .neqv. .true.) print*,101,'obj%cmp%ptr'
if(is_contiguous(obj%cmp%ptr(:)) .neqv. .true.) print*,102,'obj%cmp%ptr(:,:,:)'
if(is_contiguous(obj%cmp%ptr(2:)) .neqv. .true.) print*,106,'obj%cmp%ptr(:,:,2:)'
if(is_contiguous(obj%cmp%ptr(::2)) .neqv. .false.) print*,111,'obj%cmp%ptr(:,:,::2)'
if(is_contiguous(obj%cmp%ptr(::i)) .neqv. .true.) print*,112,'obj%cmp%ptr(:,:,::i)'
if(is_contiguous(obj%cmp%ptr(::j)) .neqv. .false.) print*,113,'obj%cmp%ptr(:,:,::j)'
if(is_contiguous(obj%cmp%ptr([1,2,3])) .neqv. .false.) print*,113,'obj%cmp%ptr(:,:,::j)'
class default
 print*,'fail'
end select
end
