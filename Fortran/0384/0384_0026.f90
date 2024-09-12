call test01()
print *,'pass'
end

module mod1
contains
 function c_fun1(i) result(ccc)
integer ,optional :: i
 character :: ccc
entry ce1_fun1(ic) result(ccc) bind(c)
entry c_fun2(iv) result(ccc) bind(c)
 ccc='a'
 end function
subroutine mod_test01()
character ::c
c=c_fun1()
c=c_fun2(211)
call sub(ce1_fun1)
call sub(c_fun2)
call sub(c_fun1)
c=c
end subroutine
end 

subroutine test01()
use mod1
character ::c
c=c_fun1()
c=c_fun2(11)
c=c
end subroutine

subroutine sub(cccc)
character :: cccc,ccc
ccc= cccc()
end subroutine
