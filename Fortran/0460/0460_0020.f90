module sss
intrinsic :: sin
end

module test_module
use sss
procedure(sin) :: test
pointer :: test
end module test_module


module test_module_a
use test_module
end 

module test_module2

use test_module_a,only:testa=>test
use test_module,only:
use test_module_a
implicit none

contains

  subroutine sub2
use test_module
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
end program

