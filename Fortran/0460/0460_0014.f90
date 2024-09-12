module sss
intrinsic :: sin
end

module test_module
use sss
procedure(sin) :: test
pointer :: test

end module test_module


module test_module_sub
interface
subroutine sin()
end subroutine
end interface
procedure(sin) :: test_sub
pointer :: test_sub
contains
  subroutine cos()
  end subroutine
end module test_module_sub



module test_module_a
use test_module
end 

module test_module2

use test_module_a
use test_module
implicit none

contains

  subroutine sub2
intrinsic :: tan
    test => tan
    if (test(1.0) .ne. tan(1.0)) print *,'err'
  end subroutine sub2

end module test_module2

program main

  use test_module2
  implicit none
  call sub2()
print *,'pass'
call ssss()
end program
subroutine ssss()
use test_module_sub
    test_sub => cos
    call test_sub()
end subroutine

