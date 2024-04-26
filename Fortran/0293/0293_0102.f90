module mod
type ty
integer :: ii
end type ty
type,extends(ty) :: ty1
integer :: jj
end type ty1
end module
 
use mod
interface
function fun()
use mod
type(ty1):: fun
end function
end interface
type(ty) :: obj
write(1,*)extends_type_of(fun(),obj)
print *,'pass'
end
 
function fun()
use mod
type(ty1):: fun
 
fun%ii=20
fun%jj=21
end function
 
