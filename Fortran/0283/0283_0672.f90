module mod1
type ty
contains
procedure,nopass :: p1=>sub1
end type

type,extends(ty) :: ty1
contains
procedure,nopass :: p1=>sub2
end type

contains
function fun()
class(ty),allocatable :: fun
allocate(ty1::fun)
end function

subroutine sub1()
 print*,'fail'
end subroutine

subroutine sub2()
 print*,'pass'
end subroutine
end module

use mod1
associate(aa=>fun())
 call aa%p1()
end associate
end
