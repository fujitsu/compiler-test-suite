module m1
     type str
       integer :: iii
     end type
end
module m2
use m1
interface
  function proc() result(ret)
     import
     type(str) :: ret
  end function
end interface
private
public::proc
end
module mod
use m2
private
public::sub
contains
subroutine sub(arg1)
  procedure(proc) :: arg1
  call ss( arg1)
end subroutine
end module
use mod
call tt
print *,'pass'
end
subroutine tt
use mod
use m2
  procedure(proc) :: arg1
call sub(arg1)
end
  function arg1() result(ret)
     use mod
     use m1
     type(str) :: ret
      ret%iii=1
  end function
subroutine ss(arg1)
     use mod
     use m1
     use m2
     type(str) :: r
  procedure(proc) :: arg1
  r=arg1()
  if (r%iii/=1) print *,901
 end

