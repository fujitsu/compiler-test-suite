module test_module
 interface
  subroutine test1()
  end subroutine
 end interface
 procedure(test1),pointer :: test
 integer :: aaa
end module test_module
module test_module_a
use test_module,only:test,aaa
end 

use test_module_a
use test_module,only:test1
implicit none
aaa=1
test => test1
call test()
if (aaa/=2) print *,201
print *,'pass'
end

subroutine test1()
use test_module
aaa=2
end subroutine
