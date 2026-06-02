module mymod

	Type :: t1
	integer :: x
	end Type

interface
subroutine sub(a)
import t1
	class(t1),pointer::a
	end subroutine
end interface
end module
subroutine sub(dum)
use mymod
class(t1) ,pointer :: dum
allocate(dum)
end subroutine

program main
use mymod

class (t1), pointer:: objt1

call sub(objt1)
print *,"PASS"
end program

