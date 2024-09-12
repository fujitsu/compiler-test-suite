call test01()
print *,'pass'
end

module mod
integer ::ii
type ty1
 integer :: a(10000) =1
 integer,pointer :: ip=>null()
 integer :: b(10000) =2
 integer :: c(10000) =3
 integer ,private:: d(10000) =4
 integer :: e(10000) =5
end type
type ty2
 type(ty1) :: s(4) 
end type
type(ty2) :: str(3) 
end
subroutine test01()
use mod
type ty3
 type(ty1) :: s(4) 
end type
type(ty3) :: str3(3) 
if (str(3)%s(4)%a(10000).ne.1) print *,'err 1'
if (str(3)%s(4)%b(10000).ne.2) print *,'err 1'
if (str(3)%s(4)%c(10000).ne.3) print *,'err 1'
if (str(3)%s(4)%e(10000).ne.5) print *,'err 1'
if (str(3)%s(4)%a(1).ne.1) print *,'err 1'
if (str(3)%s(4)%b(1).ne.2) print *,'err 1'
if (str(3)%s(4)%c(1).ne.3) print *,'err 1'
if (str(3)%s(4)%e(1).ne.5) print *,'err 1'
if (str3(3)%s(4)%a(10000).ne.1) print *,'err 1'
if (str3(3)%s(4)%b(10000).ne.2) print *,'err 1'
if (str3(3)%s(4)%c(10000).ne.3) print *,'err 1'
if (str3(3)%s(4)%e(10000).ne.5) print *,'err 1'
if (str3(3)%s(4)%a(1).ne.1) print *,'err 1'
if (str3(3)%s(4)%b(1).ne.2) print *,'err 1'
if (str3(3)%s(4)%c(1).ne.3) print *,'err 1'
if (str3(3)%s(4)%e(1).ne.5) print *,'err 1'
end
