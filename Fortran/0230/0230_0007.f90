module m1
     type str
       integer :: iii
     end type
end
module mod
interface
  function proc() result(ret)
      use m1
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
