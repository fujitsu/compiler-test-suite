module m1
     type str
       integer :: iii
     end type
end
module n02
interface
  function proc() result(ret)
      use m1
     type(str) :: ret
  end function
end interface
end
module mod
private
public::sub
contains
subroutine sub(arg1)
use n02
  procedure(proc) :: arg1
end subroutine
end module
use mod
print *,'pass'
end
