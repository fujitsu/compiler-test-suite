subroutine test01()
type ty0
 integer :: a01
 integer :: a02
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
type(ty2),parameter :: str = ty2(ty1(ty0(6,7),1,2,3),4,5)
integer,parameter :: j01 = str%a1
integer,parameter :: j02 = str%a2
integer,parameter :: j03 = str%a3
integer,parameter :: j04 = str%a4
integer,parameter :: j05 = str%a5
integer,parameter :: j06 = str%a01
integer,parameter :: j07 = str%a02
type(ty1),parameter:: str1=str%ty1
integer,parameter :: n01 = str1%a1
integer,parameter :: n02 = str1%a2
integer,parameter :: n03 = str1%a3
integer,parameter :: n04 = str1%a01
integer,parameter :: n05 = str1%a02
type(ty0),parameter:: str0=str%ty0
integer,parameter :: n14 = str0%a01
integer,parameter :: n15 = str0%a02
if (j01/=1) print *,'fail'
if (j02/=2) print *,'fail'
if (j03/=3) print *,'fail'
if (j04/=4) print *,'fail'
if (j05/=5) print *,'fail'
if (j06/=6) print *,'fail'
if (j07/=7) print *,'fail'
if (n01/=1) print *,'fail'
if (n02/=2) print *,'fail'
if (n03/=3) print *,'fail'
if (n04/=6) print *,'fail'
if (n05/=7) print *,'fail'
if (n14/=6) print *,'fail'
if (n15/=7) print *,'fail'
end
call test01()
print *,'pass'
end
