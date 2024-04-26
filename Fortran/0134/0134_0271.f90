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
type(ty2),parameter :: str = ty2(ty1(1),1)
integer,parameter :: j = str%a1
if (j.ne.1) call errtra
end
