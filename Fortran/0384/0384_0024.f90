call test01()
print *,'pass'
end

module mod1
contains

subroutine mod_test03()
character ::c
call isub()
contains
subroutine isub()
c=c_fun1()
c=ce1_fun1()
c=ce2_fun1()
c=c_fun2()
c=c
end subroutine
end subroutine

 function c_fun1() result(ccc)
 character :: ccc
entry ce1_fun1() result(ccc) bind(c)
entry ce2_fun1() result(ccc) 
entry c_fun2() result(ccc) bind(c)
 ccc='a'
 end function
subroutine mod_test01()
character ::c
c=c_fun1()
c=ce1_fun1()
c=ce2_fun1()
c=c_fun2()
c=c
end subroutine

subroutine mod_test02()
character ::c
call isub()
contains
subroutine isub()
c=c_fun1()
c=ce1_fun1()
c=ce2_fun1()
c=c_fun2()
c=c
end subroutine
end subroutine
end 

subroutine test01()
use mod1
character ::c
c=c_fun1()
c=ce2_fun1()
c=ce1_fun1()
c=c_fun2()
c=c
call mod_test01()
call mod_test02()
call mod_test03()
end subroutine