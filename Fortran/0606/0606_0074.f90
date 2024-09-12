module mod1
type ty
integer :: ii
contains
procedure :: prc
generic :: operator(+) => prc
end type
contains
function prc(a,b)
 integer,intent(in) :: b
 class(ty),INTENT(IN) :: a
 type(ty) :: prc
 prc%ii = a%ii + b
 print *,"PRC"
END function
end module
subroutine fun1()
use mod1
type(ty) :: obj
type(ty) :: j
j%ii = 10
obj =  j + 10
if(obj%ii .NE. 20) print*,"fail"
print*,"pass"
end subroutine
use mod1
call fun1()

end

