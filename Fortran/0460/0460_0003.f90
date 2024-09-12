module test_module
 interface
  subroutine test1()
  end subroutine
 end interface
 procedure(test1) :: test
 integer :: aaa
end module test_module
module test_module_a
use test_module,only:test,aaa
end 

use test_module_a
use test_module
implicit none
aaa=1
call test()
end

subroutine test()
print *,'pass'
end subroutine
