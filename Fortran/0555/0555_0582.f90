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
      print*,"Pass1"
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
class(ty),allocatable :: cptr
allocate(ty::cptr)
obj%ii=4
cptr%ii=5
if( same_type_As(cptr,obj) .NEQV. .TRUE. ) print*,"Fail"
select type(cptr)
  type is(ty)
    cptr%ii = 10
    if(cptr%prc() .NE. 10) print*,"Fail 4"
    print*,"Pass2"
  class default
    print*,"Fail 2"
end select
end

