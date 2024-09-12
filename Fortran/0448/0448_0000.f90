module test_module
 interface
  subroutine test1()
  end subroutine
 end interface
 procedure(test1),pointer :: test
end module test_module

module test_module_a
use test_module
end 

use test_module_a,only:test
use test_module
implicit none
if (1/=2) goto 1
call test()
1print *,'pass'
end
