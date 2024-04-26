type at
 integer :: i
end type

call ss

contains
subroutine ss
type,extends(at) :: bt
 integer :: j
end type

class(*),pointer :: obj,oo
allocate(bt:: obj)
allocate(at:: oo)
block
type,extends(at) :: bt
 integer :: j
end type

class(*),allocatable :: bbj1,bbj

allocate(bt:: bbj,bbj1)
block
type,extends(at) :: bt
 integer :: j
end type

class(*),allocatable :: bbj

allocate(bt:: bbj)

if(extends_type_of(bbj,obj) .neqv. .true. ) print*, 'pass'
if(extends_type_of(bbj,oo) .neqv. .true. ) print*, 103
if(extends_type_of(bbj,bbj1) .eqv. .true. ) print*, 101
if(same_type_as(bbj,bbj1) .eqv. .true. ) print*, 102
end block
end block
end subroutine
end
