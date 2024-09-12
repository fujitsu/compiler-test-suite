call test01()
print *,'pass'
end

subroutine test01()
type ty1
 integer :: a(1000) =1
 integer :: b(1000) =2
 integer :: c(1000) =3
 integer :: d(1000) =4
 integer :: e(1000) =5
end type
type ty2
 type(ty1) :: s(4) 
end type
type(ty2) :: str(9) 
if (str(9)%s(4)%a(1000).ne.1) print *,'err 1'
if (str(9)%s(4)%b(1000).ne.2) print *,'err 1'
if (str(9)%s(4)%c(1000).ne.3) print *,'err 1'
if (str(9)%s(4)%d(1000).ne.4) print *,'err 1'
if (str(9)%s(4)%e(1000).ne.5) print *,'err 1'
if (str(9)%s(4)%a(1).ne.1) print *,'err 1'
if (str(9)%s(4)%b(1).ne.2) print *,'err 1'
if (str(9)%s(4)%c(1).ne.3) print *,'err 1'
if (str(9)%s(4)%d(1).ne.4) print *,'err 1'
if (str(9)%s(4)%e(1).ne.5) print *,'err 1'
end
