call test01()
print *,'pass'
end

module mm
type,bind(c) ::  xx
 character :: ccc
end type
end 

module mod1
contains


 function c_fun1() result(ccc)
 character :: ccc
entry ce1_fun1() result(ccc) bind(c)
entry c_fun2() result(ccc) bind(c)
 ccc='a'
 end function

 function cx_fun1() result(ccc) bind(c)
 character :: ccc
entry ce1x_fun1() result(ccc)
entry cx_fun2() result(ccc) 
 ccc='a'
 end function

 function i_fun1() result(ccc)
 integer   :: ccc
entry ie1_fun1() result(ccc) bind(c)
entry i_fun2() result(ccc) bind(c)
 ccc=1
 end function
 function ix_fun1() result(ccc) bind(c)
 integer   :: ccc
entry ie1x_fun1() result(ccc) 
entry ix_fun2() result(ccc)
 ccc=1
 end function

 function r_fun1() result(ccc)
 real      :: ccc
entry re1_fun1() result(ccc) bind(c)
entry r_fun2() result(ccc) bind(c)
 ccc=1
 end function
 function rx_fun1() result(ccc) bind(c)
 real      :: ccc
entry re1x_fun1() result(ccc) 
entry rx_fun2() result(ccc)
 ccc=1
 end function

 function z_fun1() result(ccc)
use mm
 type(xx)  :: ccc
entry ze1_fun1() result(ccc) bind(c)
entry z_fun2() result(ccc) bind(c)
 ccc=xx("a")
 end function
 function zx_fun1() result(ccc) bind(c)
use mm
 type(xx) :: ccc
entry ze1x_fun1() result(ccc) 
entry zx_fun2() result(ccc)
 ccc=xx("a")
 end function




subroutine mod_test01()
use mm
 type(xx)  ::z
character ::c
c=cx_fun1()
c=ce1x_fun1()
c=cx_fun2()
c=c_fun1()
c=ce1_fun1()
c=c_fun2()
c=c

i=ix_fun1()
i=ie1x_fun1()
i=ix_fun2()
i=i_fun1()
i=ie1_fun1()
i=i_fun2()
i=i

r=rx_fun1()
r=re1x_fun1()
r=rx_fun2()
r=r_fun1()
r=re1_fun1()
r=r_fun2()
r=r

z=zx_fun1()
z=ze1x_fun1()
z=zx_fun2()
z=z_fun1()
z=ze1_fun1()
z=z_fun2()
z=z


end subroutine
end 

subroutine test01()
use mod1
character ::c
c=c_fun1()
c=c_fun2()
c=c
end subroutine
