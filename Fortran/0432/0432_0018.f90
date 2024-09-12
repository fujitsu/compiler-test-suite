use mod
call sub()
print *,'pass'
end
module mod
data ii/2/
contains
subroutine sub()
type ty1
integer :: a(10) =1
end type
type ty2
type(ty1) :: aaa(10)
end type
type(ty2) :: str(10)
if (str(1)%aaa(1)%a(1).ne.1) print *,'err'
if (ii.ne.2) print *,'err'
end subroutine
end
