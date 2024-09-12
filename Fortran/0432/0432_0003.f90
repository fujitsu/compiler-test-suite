call test01()
print *,'pass'
end

subroutine test01()
type ty1
 integer :: a(10000) =1
 integer :: aa(1)
 integer :: b(10000) =2
 integer :: bb(1)
 integer :: c(10000) =3
 integer :: cc(1)
 integer :: d(10000) =4
 integer :: dd(1)
 integer :: e(10000) =5
 integer :: ee(1)
end type
type ty2
 type(ty1) :: s(3) 
end type
type(ty2) :: str(3) 
if (str(3)%s(3)%a(10000).ne.1) print *,'err 1'
if (str(3)%s(3)%b(10000).ne.2) print *,'err 1'
if (str(3)%s(3)%c(10000).ne.3) print *,'err 1'
if (str(3)%s(3)%d(10000).ne.4) print *,'err 1'
if (str(3)%s(3)%e(10000).ne.5) print *,'err 1'
end
