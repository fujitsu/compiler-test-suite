module mod1

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
      print*,'pass'
    class default
      print*,"fail 3"
  end select
end function
end module
 
use mod1
use mod1,only : ppp=>ty
use mod1,only : obj
class(ppp),allocatable :: cptr
allocate(cptr)
if(same_type_as(cptr,obj) .NEQV. .TRUE.) print*,"Fail"
select type(cptr)
  type is(ppp)
    cptr%ii = 10
    if(cptr%prc() .NE. 10) print*,"Fail 4"
  class default
    print*,"Fail 2"
end select
end

