module mod1
type ty
 integer :: ii=2
 contains
  procedure :: eprc
   generic :: operator(-) => eprc
end type

contains
function fun1()
 type(ty) :: obj
 type(ty) :: obj_1
 obj_1%ii = 10
 obj =  - obj_1
 if(obj%ii .NE. -10) then
  print*,"fail"
 fun1 = 0
 else
 fun1 = obj%ii
 endif
end function

function eprc(a)
 class(ty),INTENT(IN) :: a
 type(ty) :: eprc

 eprc%ii = - a%ii 
END function
end module

use mod1
xx = fun1()
if(xx==-10) print*,'pass'
end
