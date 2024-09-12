module test_module
 interface
  function   test1()
    integer :: test1
  end function  
 end interface
 pointer :: test
 integer :: test
 external :: test
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
aaa = test()
end

function   test1()
integer :: test1 
test1 =1
print *,'pass'
end function   
