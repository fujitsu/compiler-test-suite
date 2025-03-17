call test01()
print *,'pass'
end
subroutine test01()
type ty0
end type

type ,extends(ty0):: ty1
 integer :: a1
 integer :: a2
 integer :: a3
end type
type ,extends(ty1) :: ty2
 integer :: a4
 integer :: a5
end type
type(ty2),parameter :: str = ty2(ty1(ty0(),1,2,3),4,5)
integer,parameter :: j01 = str%a1
integer,parameter :: j02 = str%a2
integer,parameter :: j03 = str%a3
integer,parameter :: j04 = str%a4
integer,parameter :: j05 = str%a5
if (j01/=1) print *,'fail'
if (j02/=2) print *,'fail'
if (j03/=3) print *,'fail'
if (j04/=4) print *,'fail'
if (j05/=5) print *,'fail'
end
