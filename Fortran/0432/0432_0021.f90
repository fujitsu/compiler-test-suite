use mod
call sub()
call sub1()
print *,'pass'
end
module mod
type bty1
integer :: ba(10) =1
end type
type bty2
type(bty1) :: baaa(10)
end type
type(bty2) :: bstr(10)
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
if (str(1)%aaa(1)%a(1).ne.1) print *,'err7'
if (astr(1)%aaa(1)%a(1).ne.2) print *,'err6'
if (bstr(1)%baaa(1)%ba(1).ne.1) print *,'err1'
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
if (str(1)%aaa(1)%a(1).ne.1) print *,'err3'
if (astr(1)%aaa(1)%a(1).ne.2) print *,'err4'
end subroutine
end
