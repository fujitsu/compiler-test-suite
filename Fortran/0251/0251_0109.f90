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
block
type,extends(at) :: bt1
 integer :: j
end type

class(at),allocatable :: bbj1,bbj

allocate(bt1:: bbj,bbj1)
block
type,extends(at) :: bt
 integer :: j
end type

type,extends(bt) :: ct
 integer :: k
end type

class(at),allocatable :: bbj,cbj

allocate(bt:: bbj)
allocate(ct:: cbj)

if(extends_type_of(bbj,obj) .eqv. .true. ) print*, 'pass'
if(extends_type_of(cbj,bbj1) .neqv. .false. ) print*, 101
if(same_type_as(bbj,bbj1) .neqv. .false. ) print*, 102
if(extends_type_of(cbj,bbj) .eqv. .false. ) print*, 103
end block
end block
end subroutine
end
