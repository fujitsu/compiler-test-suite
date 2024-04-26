type tt
 integer :: i(4)
 integer :: j(3)
end type

type tt2
 integer :: i2(4)
end type

type(tt) :: obj(4)
type(tt2) :: obj2(4)

if(is_contiguous(obj(2:4))) print*,'pass'
if(is_contiguous(obj(2:4)%i(1))) print*,102
if(is_contiguous(obj(1)%i(2:4)) .neqv. .true.) print*,103
if(is_contiguous(obj2(1)%i2(2:4)) .neqv. .true.) print*,104
if(is_contiguous(obj2(2:4)%i2(1))) print*,105
end
