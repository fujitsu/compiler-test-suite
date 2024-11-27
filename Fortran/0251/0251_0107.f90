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

class(at),allocatable :: bbj,cbj
allocate(bt:: cbj)
block
type,extends(at) :: bt2
 integer :: j
end type

allocate(bt2:: bbj)

if(extends_type_of(bbj,obj) .eqv. .true. ) print*,'pass'
if(extends_type_of(bbj,cbj) .eqv. .true. ) print*,101
end block
end subroutine
end
