module mod1

type ty1
integer ::i
end type

contains
function fun(dum1)
type(ty1),target :: dum1
class(*),pointer :: fun
fun=>dum1
end function

end module

program main

use mod1

class(*),pointer::ptr
type(ty1),target::tar

tar = ty1(1)
ptr=> fun(tar)
if(sizeof(ptr)==4) print*,'PASS'

end
