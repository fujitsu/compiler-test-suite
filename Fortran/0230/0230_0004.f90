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
use n02
contains
subroutine sub(arg1)
  procedure(proc) :: arg1
end subroutine
end module
use mod
print *,'pass'
end
