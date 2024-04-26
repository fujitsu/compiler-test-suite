type at
 integer :: i
end type

call ss

contains
subroutine ss
type,extends(at) :: bt
 integer :: j
end type

class(at),pointer :: obj
allocate(bt:: obj)

block
type,extends(at) :: bt
 integer :: j
end type

class(at),allocatable :: bbj

allocate(bt:: bbj)

if(extends_type_of(bbj,obj) .eqv. .false. ) print*, 'pass'
end block
end subroutine
end
