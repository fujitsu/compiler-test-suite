module test_module

intrinsic :: sin
procedure(sin),pointer :: test

end module test_module

module test_module_a
use test_module,only:test
end 

module test_module2

use test_module_a
use test_module,only:test
implicit none

contains

  subroutine sub2
intrinsic :: sin
    test => sin
if (abs(test(1.0) - sin(1.0))>0.001) print *,'err'
  end subroutine sub2

end module test_module2

program main

  use test_module2
  implicit none
  call sub2()
print *,'pass'
end program

