call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
call test08()
call test09()
print *,'pass'
end

subroutine test01()
call sub01(1)
end
subroutine sub01(a)
integer a(*)
if (a(1).ne.1) print *,'test01 ng'
end subroutine

subroutine test02()
integer ,parameter :: i=1
call sub02(i)
end
subroutine sub02(a)
integer a(*)
if (a(1).ne.1) print *,'test02 ng'
end subroutine

subroutine test03()
integer :: i
i=1
call sub03(i)
end
subroutine sub03(a)
integer a(*)
if (a(1).ne.1) print *,'test03 ng'
end subroutine

subroutine test04()
integer ,parameter :: a(10)=(/1,2,3,4,5,6,7,8,9,10/)
call sub04(a(1))
end
subroutine sub04(a)
integer a(*)
if (a(1).ne.1) print *,'test04 ng'
end subroutine

subroutine test05()
type ty1
 integer :: b
end type
type(ty1) :: a
a%b=1
call sub05(a%b)
end
subroutine sub05(a)
integer a(*)
if (a(1).ne.1) print *,'test05 ng'
end subroutine

subroutine test06()
type ty1
 integer :: b(1)
end type
type(ty1) :: a
a%b=1
call sub06(a%b(1))
end
subroutine sub06(a)
integer a(*)
if (a(1).ne.1) print *,'test06 ng'
end subroutine

subroutine test07()
type ty1
 integer :: b
end type
type(ty1) :: a(1)
a(1)%b=1
call sub07(a(1)%b)
end
subroutine sub07(a)
integer a(*)
if (a(1).ne.1) print *,'test07 ng'
end subroutine

subroutine test08()
type ty1
 integer :: b(1)
end type
type(ty1) :: a(1)
a(1)%b(1)=1
call sub08(a(1)%b)
end
subroutine sub08(a)
integer a(*)
if (a(1).ne.1) print *,'test08 ng'
end subroutine


subroutine test09()
call sub09(int(1))
end
subroutine sub09(a)
integer a(*)
if (a(1).ne.1) print *,'test09 ng'
end subroutine
