call test01()
print *,'pass'
end

subroutine test01()
type ty1
 integer :: a(101) =10
 integer :: b(102) =20
 integer :: c(103) =30
 integer :: d(104) =40
 integer :: e(105) =50
end type
type ty2
 type(ty1) :: s(1)=ty1(1,2,3,4,5) 
 type(ty1) :: s1(1)
end type
type(ty2) :: str(2) 
if (str(2)%s(1)%a(100).ne.1) print *,'err 1'
if (str(2)%s(1)%b(100).ne.2) print *,'err 1'
if (str(2)%s(1)%c(100).ne.3) print *,'err 1'
if (str(2)%s(1)%d(100).ne.4) print *,'err 1'
if (str(2)%s(1)%e(100).ne.5) print *,'err 1'
if (str(2)%s(1)%a(1).ne.1) print *,'err 1'
if (str(2)%s(1)%b(1).ne.2) print *,'err 1'
if (str(2)%s(1)%c(1).ne.3) print *,'err 1'
if (str(2)%s(1)%d(1).ne.4) print *,'err 1'
if (str(2)%s(1)%e(1).ne.5) print *,'err 1'
if (str(2)%s1(1)%a(100).ne.10) print *,'err 1'
if (str(2)%s1(1)%b(100).ne.20) print *,'err 1'
if (str(2)%s1(1)%c(100).ne.30) print *,'err 1'
if (str(2)%s1(1)%d(100).ne.40) print *,'err 1'
if (str(2)%s1(1)%e(100).ne.50) print *,'err 1'
if (str(2)%s1(1)%a(1).ne.10) print *,'err 1'
if (str(2)%s1(1)%b(1).ne.20) print *,'err 1'
if (str(2)%s1(1)%c(1).ne.30) print *,'err 1'
if (str(2)%s1(1)%d(1).ne.40) print *,'err 1'
if (str(2)%s1(1)%e(1).ne.50) print *,'err 1'
end
