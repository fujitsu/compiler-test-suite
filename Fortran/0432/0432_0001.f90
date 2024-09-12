call test01()
print *,'pass'
end

subroutine test01()
type ty1
 integer :: a(1000) =1
end type
type ty2
 type(ty1) :: s(9) 
end type
type(ty2) :: str(9) 
if (str(9)%s(9)%a(1000).ne.1) print *,'err 1'
end
