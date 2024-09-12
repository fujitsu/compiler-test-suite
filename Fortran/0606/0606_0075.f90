module mod1
type ty
integer :: ii
contains
procedure :: prc
generic :: operator(+) => prc
end type
contains
function prc(b,a)
 class(ty),INTENT(IN) :: a
 class(ty),INTENT(IN) :: b
 type(ty) :: prc
 prc%ii = a%ii + b%ii
 print *,"PRC"
END function
end module
subroutine fun1()
use mod1
type(ty) :: obj
type(ty) :: j
type(ty) :: k
j%ii = 10
k%ii = 20
obj =  k + j
if(obj%ii .NE. 30) print*,"fail"
print*,"pass"
end subroutine
use mod1
call fun1()
end

