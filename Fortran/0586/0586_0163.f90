
module m1
interface
  function funci1() result(rst)
  integer(kind=1) :: rst
 end function
end interface
contains
  function funci2() result(rst)
  integer(kind=1) :: rst
 end function

end module
use m1
interface
  function funci3() result(rst)
  integer(kind=1) :: rst
 end function
end interface
procedure(funci2),pointer :: pi1 =>funci1
procedure(funci3),pointer :: pi2 =>funci1
procedure(funci1),pointer :: pi3 =>funci3
procedure(funci1),pointer :: pi4 =>funci2
if(associated(pi1).neqv..true.)print*,"101"
if(associated(pi2).neqv..true.)print*,"102"
if(associated(pi3).neqv..true.)print*,"103"
if(associated(pi4).neqv..true.)print*,"104"
print*,"PASS"
end
  function funci1() result(rst)
  integer(kind=1) :: rst
 end function
  function funci3() result(rst)
  integer(kind=1) :: rst
 end function


