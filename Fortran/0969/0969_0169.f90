module mod
 type :: t
  integer :: i
  procedure(f1),pointer,nopass  :: g1
 end type t
 contains
  integer(kind=8) function f1(c)
   type(t):: c
   f1= c%i
  end function f1
end 
use mod
type(t) :: c
c%i=1
c%g1=>f1
if (c%g1(c)/=1)print *,'error-1'
end
