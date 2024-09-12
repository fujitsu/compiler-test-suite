module mod
procedure(fun1),pointer :: p1=>fun1
contains
function fun1()
 procedure(),pointer::fun1
 fun1=>NULL()
 print*,"PASS"
end function
end
use mod
procedure(fun1),pointer :: p2=>fun1
if(associated(p1()).neqv..false.)print*,"101"
if(associated(p2()).neqv..false.)print*,"101"
print*,"PASS"
end

