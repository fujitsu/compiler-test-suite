module m1
type at
 integer :: i
end type

type,extends(at) :: bt
 integer :: j
end type
end module

use m1
class(*),pointer :: obj
type(at),target :: tgt

obj=>tgt

block
type,extends(at) :: bt
 integer :: j
end type

class(*),allocatable :: bbj1,bbj,dbj

allocate(bt:: bbj,bbj1)
block
type,extends(at) :: bt
 integer :: j
end type

type,extends(bt) :: ct
 integer :: k
end type

class(*),allocatable :: bbj,cbj

allocate(bt:: bbj)
allocate(ct:: cbj)

if(extends_type_of(bbj,obj) .eqv. .true.) print*,'pass'
if(extends_type_of(cbj,bbj1) .neqv. .false.) print*,101
if(same_type_as(bbj,bbj1) .neqv. .false.) print*,102
if(extends_type_of(cbj,bbj) .eqv. .false.) print*,103

call move_alloc(to=dbj,from=bbj1)
end block
if(same_type_as(bbj,dbj) .neqv. .true.) print*,104
end block
end
