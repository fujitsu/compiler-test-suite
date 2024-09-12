use mod
call sub()
print *,'pass'
end

module mod
contains
subroutine sub()
type ty1
 integer :: arr(10000)=1
end type
type ty2
 type(ty1) :: s1(1000)
end type
call sub1()
contains
subroutine sub1()
type(ty2) :: s2(10)
if (s2(1)%s1(10)%arr(1).ne.1) print *,'NG'
end subroutine
end subroutine
end
