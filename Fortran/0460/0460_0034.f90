module test_module
 interface
  subroutine test1()
  end subroutine
 end interface
 procedure(test1),pointer :: test
 integer :: aaa
end module test_module
module test_module_a
use test_module,only:test,aaa,test1
end 

use test_module_a
use test_module,only:test,aaa,test1
implicit none
aaa=1
test => test1
call test()
end

subroutine test1()
print *,'pass'
end subroutine
