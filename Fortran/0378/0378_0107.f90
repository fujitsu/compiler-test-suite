module mod1
contains
function c_fun2() result(ccc) bind(c)
 character :: ccc
 entry    c_fun1() result(ccc)
 ccc='a'
 end function
subroutine mod_test01()
character ::c
c=c_fun2()
end subroutine
end 
use mod1
character ::c
call mod_test01
c=c_fun2()

print *,'pass'
end 
