program test
type ty1
integer :: i =2
end type 

type,  extends(ty1) ::ty2
integer :: j 
end type

type(ty2) :: act1

call sub (act1)
contains 
subroutine sub(dummy1)
class(*) :: dummy1
print*,sizeof(dummy1),'pass'
end subroutine
end
