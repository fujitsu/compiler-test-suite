type at
 integer :: i
end type

call ss

contains
subroutine ss
type,extends(at) :: bt
 integer :: j
end type

type(at) :: obj
type(bt) :: bbj
block
type,extends(at) :: bt
 integer :: j
end type

type(bt) :: bbj

if(extends_type_of(bbj,obj) .neqv. .true.) print*,101
end block
if(extends_type_of(bbj,obj) .neqv. .true.) print*,102
print*,'pass'
end subroutine
end
