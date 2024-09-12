module mod1
contains
 function c_fun1() result(ccc)
 character :: ccc
entry c_fun2() result(ccc) bind(c)
 ccc='a'
 end function
subroutine mod_test01()
character ::c
c=c_fun2()
if (c/='a')print *,'error-1',c
end subroutine
subroutine mod_test02()
character ::c
c=c_fun2()
if (c/='a')print *,'error-1',c
end subroutine
end 
use mod1
character ::c
call mod_test01()
call mod_test02()
c=c_fun2()
if (c/='a')print *,'error-1',c

print *,'pass'
end 
