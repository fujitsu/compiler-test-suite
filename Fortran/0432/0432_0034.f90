use mod
call sub()
print *,'pass'
end
module mod
type ty1
integer :: a(10) =1
integer :: b(10) =1
integer :: c(10) =1
integer :: d(10) =1
end type
type ty2
type(ty1) :: aaa(10)
end type
type(ty2) :: str(10)
contains
subroutine sub()
end subroutine
end
