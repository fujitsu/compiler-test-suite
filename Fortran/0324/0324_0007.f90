call test01()
call test02()
print *,'pass'
end

module mod01
contains
subroutine sub1()
integer a(100000)
end subroutine
subroutine sub2()
save
integer a(100000)
end subroutine
subroutine sub3()
common /com/ a
integer a(100000)
end subroutine
subroutine sub4()
integer  ::a(100000)=1
end subroutine
end module

subroutine test01() 
use mod01
call sub1()
call sub2()
call sub3()
call sub4()
end subroutine

module mod02a
contains
subroutine mod2a_sub1()
end subroutine
subroutine mod2a_sub2()
entry mod2a_sub3()
end subroutine
end module
module mod02b
contains
subroutine mod2b_sub1()
end subroutine
subroutine mod2b_sub2()
entry mod2b_sub3()
end subroutine
end module

module mod02
use mod02a
use mod02b
contains
subroutine mod2_sub1()
call mod2b_sub1()
call mod2b_sub2()
call mod2b_sub3()
end subroutine
subroutine mod2_sub2()
entry mod2_sub3()
end subroutine
end module

subroutine test02()
use mod02
call mod2_sub1()
call mod2_sub2()
call mod2_sub3()
call mod2a_sub1()
call mod2a_sub2()
call mod2a_sub3()
end subroutine

