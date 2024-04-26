call test01()
print *,'pass'
end
subroutine test01()
type ty1
 integer :: a1
 integer :: a2
 integer :: a3
end type
type ,extends(ty1) :: ty2
 integer :: a4
end type
type(ty2),parameter :: str = ty2(ty1(1,2,3),4)
integer,parameter :: j01 = str%a1
integer,parameter :: j02 = str%a2
integer,parameter :: j03 = str%a3
integer,parameter :: j04 = str%a4
if (j01/=1) call errtra
if (j02/=2) call errtra
if (j03/=3) call errtra
if (j04/=4) call errtra
end
