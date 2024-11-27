module trygen
implicit none
public :: subr
private :: subr1, subr2
interface subr
   module procedure subr1, subr2
end interface

contains

subroutine subr1(proc)
interface
   subroutine proc(intarg)
   integer, intent(in) :: intarg
   end subroutine proc
end interface
call proc(12)
end subroutine subr1

subroutine subr2(proc)
interface
   subroutine proc(realarg)
   real, intent(in) :: realarg
   end subroutine proc
end interface
call proc(14.0)
end subroutine subr2

end module trygen
use trygen
print *,'pass'
end
