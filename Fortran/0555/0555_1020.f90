module mod1

type ty1
integer ::i
end type

end module

program main

use mod1

interface
function fun(dum1)
use mod1
type(ty1) :: dum1(5)
class(*),allocatable :: fun(:)
end function
end interface

class(*),pointer::ptr(:)
type(ty1)::tar(5)

tar = ty1(1)
allocate(ptr,source= fun(tar))

if(sizeof(ptr)==20) print*,'PASS'
end

function fun(dum1)
use mod1
type(ty1) :: dum1(5)
class(*),allocatable :: fun(:)
allocate(fun,source=dum1)
end function
