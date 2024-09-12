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
contains
function sub() result(ret)
  procedure(proc),pointer :: ret
end function
end module
use mod
print *,'pass'
end
