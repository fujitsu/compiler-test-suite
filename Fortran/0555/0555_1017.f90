module mod1

type ty1
integer ::i
end type

contains
function fun(dum1)
type(ty1),target :: dum1(5)
class(ty1),pointer :: fun(:)
fun=>dum1
end function

end module

program main

use mod1

class(ty1),pointer::ptr(:)
type(ty1),target::tar(5)

tar = ty1(1)
ptr=> fun(tar)

if(sizeof(ptr)==20) print*,'PASS'
end
