call test01()
print *,'pass'
end

subroutine test01()
type ty1
 integer(1) :: a(10001) =1
 integer(2) :: b(10001) =2
 integer(4) :: c(10001) =3
 integer(8) :: d(10001) =4
 character  :: x(10001) = 'a'
 integer    :: e(10001) =5
end type
type ty2
 type(ty1) :: s(1) 
end type
type(ty2) :: str(1) 
if (str(1)%s(1)%a(10000).ne.1) print *,'err 1'
if (str(1)%s(1)%b(10000).ne.2) print *,'err 1'
if (str(1)%s(1)%c(10000).ne.3) print *,'err 1'
if (str(1)%s(1)%d(10000).ne.4) print *,'err 1'
if (str(1)%s(1)%x(10000).ne.'a') print *,'err 1'
if (str(1)%s(1)%e(10000).ne.5) print *,'err 1'
if (str(1)%s(1)%a(1).ne.1) print *,'err 1'
if (str(1)%s(1)%b(1).ne.2) print *,'err 1'
if (str(1)%s(1)%c(1).ne.3) print *,'err 1'
if (str(1)%s(1)%d(1).ne.4) print *,'err 1'
if (str(1)%s(1)%e(1).ne.5) print *,'err 1'
end
