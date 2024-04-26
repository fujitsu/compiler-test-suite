type at
 integer :: i=11
end type

type,extends(at) :: bt
 integer :: j=22
end type

block
type,extends(at) :: bt
 integer :: j=33
end type

type(bt) :: act

call sub(act,bt(1,5))

block
type,extends(at) :: bt
 integer :: j=44
end type

type,extends(bt) :: ct
 integer :: k=55
end type

call sub2(bt(2,4),ct(5,6,7))
call sub3(act,bt(2,4),ct(5,6,7))
end block
end block
contains

subroutine sub(bbj1,bbj)
class(*) :: bbj1,bbj
if(same_type_as(bbj,bbj1) .eqv. .false.) print*,102
end subroutine

subroutine sub2(bbj,cbj)
class(*) :: bbj,cbj
if(extends_type_of(cbj,bbj) .eqv. .false.) print*,103
end subroutine

subroutine sub3(d1,d2,d3)
class(*) :: d1,d2,d3
if(extends_type_of(d2,at(2)) .eqv. .true.) print*,'pass'
if(extends_type_of(d3,d2) .neqv. .true.) print*,101
if(same_type_as(d1,d2) .neqv. .false.) print*,201
if(extends_type_of(d3,d1) .neqv. .false.) print*,202
if(extends_type_of(d1,d3) .neqv. .false.) print*,203
if(extends_type_of(d1,d2) .neqv. .false.) print*,204
if(extends_type_of(d2,d1) .neqv. .false.) print*,205
if(extends_type_of(d2,d3) .neqv. .false.) print*,206
if(extends_type_of(d1,at(2)) .neqv. .true.) print*,207
if(extends_type_of(d3,at(2)) .neqv. .true.) print*,208
if(same_type_as(d1,bt(2,3)) .neqv. .false.) print*,209
if(same_type_as(bt(2,3),d1) .neqv. .false.) print*,210
if(same_type_as(bt(2,3),d2) .neqv. .false.) print*,211
if(same_type_as(d2,bt(2,3)) .neqv. .false.) print*,212
end subroutine
end
