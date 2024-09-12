module mmm
 interface
  subroutine test1()
  end subroutine
 end interface
end
module test_module
 use mmm
 procedure(test1),pointer :: test
 integer :: aaa
end module test_module

module test_module_a
use test_module,only:test,aaa
end 

use test_module_a
use test_module,only:test,aaa
use mmm
implicit none
aaa=1
test => test1
call test()
end

subroutine test1()
print *,'pass'
end subroutine
