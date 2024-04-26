Module m1
interface
 function fun() bind(c,name="ss1")
  integer :: fun
 end function
end interface
procedure(fun),pointer :: ptr2=>fun
contains
subroutine sub()
 interface
  function fun() bind(c,name="ss2")
   integer :: fun
  end function
 end interface
procedure(fun),pointer :: ptr2=>fun
if(ptr2() /= 20 )print*,"102"
end subroutine
end module

use m1
if(ptr2() /= 10 )print*,"101"
call sub()
print*,"PASS"
end 

function fun() bind(c,name="ss1")
integer :: fun
fun=10
end function
function fun() bind(c,name="ss2")
integer :: fun
fun=20
end function
