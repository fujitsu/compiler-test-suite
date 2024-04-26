module m
type ttt
contains
procedure,nopass::ppp=>fun
end type
contains
function fun() result(i)
i = 2
end function
end module
use,intrinsic::iso_fortran_env
use m
type(ttt),parameter::sss=ttt()
character(len(compiler_options()))::ch(2)
do i=1,sss%ppp()
ch(i)=fun1()
end do
print *,'pass'
contains
character(len(compiler_options())) function fun1() result(c)
c=compiler_options()
end function fun1
end
