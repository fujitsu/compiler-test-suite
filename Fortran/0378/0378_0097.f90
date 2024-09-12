call test01()
print *,'pass'
end

module mod1
contains
 function c_fun1() result(ccc)
 character :: ccc
entry ce1_fun1() result(ccc) bind(c)
entry c_fun2() result(ccc) bind(c)
 ccc='a'
 end function
subroutine mod_test01()
character ::c
c=c_fun1()
c=c_fun2()
c=c
end subroutine
end 

subroutine test01()
use mod1
character ::c
c=c_fun1()
c=c_fun2()
c=c
end subroutine
