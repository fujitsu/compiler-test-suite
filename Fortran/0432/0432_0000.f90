call test01()
print *,'pass'
end

subroutine test01()
type ty1
 integer :: a(100) =1
 integer :: b(100) =2
 integer :: c(100) =3
 integer :: d(100) =4
 integer :: e(100) =5
end type
type ty2
 type(ty1) :: s(9) 
end type
type(ty2) :: str(9) 
if (str(9)%s(9)%a(100).ne.1) print *,'err 1'
end
