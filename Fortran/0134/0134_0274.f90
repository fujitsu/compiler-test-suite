call test01()
print *,'pass'
end
subroutine test01()
type ty1
 integer :: a1
end type
type ,extends(ty1) :: ty2
 integer :: a3
end type
type(ty2),parameter :: str = ty2(ty1(1),3)
integer,parameter :: j = str%a3
if (j.ne.3) call errtra
end
