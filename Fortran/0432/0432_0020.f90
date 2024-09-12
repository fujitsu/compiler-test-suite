use mod
call sub()
call sub1()
print *,'pass'
end
module mod
data ii/1/
contains
subroutine sub()
type ty1
integer :: a(10) =1
end type
type ty2
type(ty1) :: aaa(10)
end type
type(ty2) :: str(10)
type aty1
integer :: a(10) =2
end type
type aty2
type(aty1) :: aaa(10)
end type
type(aty2) :: astr(10)
if (str(1)%aaa(1)%a(1).ne.1) print *,'err'
if (astr(1)%aaa(1)%a(1).ne.2) print *,'err'
end subroutine
subroutine sub1()
type xty1
integer :: a(10) =1
end type
type xty2
type(xty1) :: aaa(10)
end type
type(xty2) :: str(10)
type xaty1
integer :: a(10) =2
end type
type xaty2
type(xaty1) :: aaa(10)
end type
type(xaty2) :: astr(10)
if (str(1)%aaa(1)%a(1).ne.1) print *,'err'
if (astr(1)%aaa(1)%a(1).ne.2) print *,'err'
if (ii.ne.1) print *,'err'
end subroutine
end
