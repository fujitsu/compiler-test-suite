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
print *,'pass'
end

subroutine test1()
use test_module
aaa=2
end subroutine
