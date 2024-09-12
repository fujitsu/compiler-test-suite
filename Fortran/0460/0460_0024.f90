module sss
intrinsic :: sin
end

module test_module
use sss
procedure(sin) :: test
pointer :: test
integer :: xxxx
end module test_module


module test_module_a
use test_module,only:testa=>test,xxxa=>xxxx
end 
module test_module_b
use test_module_a
end 

module test_module2

use test_module_a,only:testb=>testa,xxxb=>xxxa
use test_module_b
use test_module
implicit none

contains

  subroutine sub2
intrinsic :: tan
    xxxb =1
    xxxa =1
    xxxx =1
    test => tan
    testb => tan
    testa => tan
    if (test(1.0) .ne. tan(1.0)) print *,'err'
    if (testb(1.0) .ne. tan(1.0)) print *,'err'
    if (testa(1.0) .ne. tan(1.0)) print *,'err'
  end subroutine sub2

end module test_module2

program main

  use test_module2
  implicit none
  call sub2()
print *,'pass'
end program

