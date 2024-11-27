module mod1
type ty
integer ii
end type
end module

program main
use mod1

interface
 function funci1(i) result(rst)
  integer :: i
  class(*),pointer :: rst
 end function

 function funci2(i) result(rst)
  integer :: i
  class(*),pointer :: rst
 end function

end interface
 
procedure(funci1),pointer :: pi1
integer :: i=2

class(*), pointer :: ptr

pi1 => funci2
ptr=> pi1(i)

select type(ptr)
type is (ty)

IF (ptr%ii .EQ. 2 ) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF
end select

end

function funci2(i) result(rst)
  use mod1
  integer :: i
  class(*), pointer :: rst
  type(ty) , pointer  :: tar
  allocate(tar)
  tar%ii =  i
  rst => tar
end function
