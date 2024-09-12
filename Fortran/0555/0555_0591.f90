module mod1
interface prc
 function FFF()
 integer :: FFF
 end function
end interface

type ty
 integer :: ii=0
 contains
  procedure :: prc=>fun
end type

type(ty),SAVE :: obj
contains
 function fun(dmy)
  integer :: fun
  class(ty) :: dmy
  fun = 10
  select type(dmy)
  type is(ty)
   print*,"Pass 2"
  class default
   print*,"Fail 3"
  end select
 end function
end module

function FFF()
 integer :: FFF
 FFF = 30
end function
 
use mod1
class(ty),allocatable :: cptr(:,:,:)
allocate(cptr(4,3,4))
obj%ii = 11
select type(cptr)
type is(ty)
cptr(3,2,3)%ii = 10
if(cptr(3,2,3)%prc() .NE. 10) print*,"Fail 4"
print*,"Pass"
class default
print*,"Fail 2"
end select
if(same_type_As(cptr,obj) .NEQV. .true.) print*,"Fail"
end
