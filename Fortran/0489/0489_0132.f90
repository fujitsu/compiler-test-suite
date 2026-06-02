module test_module
 interface
  subroutine test1()
  end subroutine
 end interface
 procedure(test1),pointer :: test
 integer :: aaa
end module test_module
module test_module_a
use test_module,only:test
use test_module
contains
subroutine ss
implicit none
test => test1
call test()
if (aaa/=3) print *,3011
 print *,3011
end subroutine
end 

use test_module_a,only:test
use test_module
implicit none
aaa=1
test => test1
call test()
if (aaa/=2) print *,201
call ss
print *,'pass'
end

subroutine test1()
use test_module
aaa=2
end subroutine
subroutine ss
use test_module
implicit none
test => test1
call test()
if (aaa/=2) print *,3012
end subroutine
