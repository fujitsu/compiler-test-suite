module sss
intrinsic :: sin
end

module test_module
use sss
procedure(sin) :: test
pointer :: test
end module test_module


module test_module_a
use test_module,only:testa=>test
end 

module test_module2

use test_module_a,only:testb=>testa
use test_module
implicit none

contains

  subroutine sub2
use test_module
intrinsic :: tan
    test => tan
    testb => tan
    if (test(1.0) .ne. tan(1.0)) print *,'err'
    if (testb(1.0) .ne. tan(1.0)) print *,'err'
  end subroutine sub2

end module test_module2

program main

  use test_module2
  implicit none
  call sub2()
print *,'pass'
end program

