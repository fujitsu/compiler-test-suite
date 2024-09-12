module test_module
 interface
  subroutine test1()
  end subroutine
 end interface
 external        :: test
 pointer :: test
 integer :: aaa
end module test_module
module test_module_a
use test_module,only:test,aaa
end 

use test_module_a
use test_module
implicit none
aaa=1
test => test1
call test()
end

subroutine test1()
print *,'pass'
end subroutine
