module mod
interface
  function proc() result(ret)
     type str
       sequence
       integer :: iii
     end type
     type(str) :: ret
  end function
end interface
private
public::sub
contains
subroutine sub(arg1)
  procedure(proc) :: arg1
end subroutine
end module
use mod
print *,'pass'
end
