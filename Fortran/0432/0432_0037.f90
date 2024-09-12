use mod
call sub()
print *,'pass'
end
module mod
type ty1
integer :: a(10) =1
end type
type ty2
type(ty1) :: aaa(1)
end type
type(ty2) :: str(1)
contains
subroutine sub()
str(1)%aaa(1)%a(1)=1
end subroutine
end
