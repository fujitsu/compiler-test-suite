module mod1

type ty1
integer ::i
end type

contains
function fun(dum1)
type(ty1) :: dum1(5)
class(ty1),allocatable :: fun(:)
allocate(fun,source=dum1)
end function

end module

program main

use mod1

class(ty1),pointer::ptr(:)
type(ty1)::tar(5)

tar = ty1(1)
allocate(ptr,source= fun(tar))

if(sizeof(ptr)==20) print*,'PASS'
end
