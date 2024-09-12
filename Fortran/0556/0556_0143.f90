program test

type ty1
integer :: i=0 
end type 

type,  extends(ty1) ::ty2
integer :: j =0
end type

class(ty1), allocatable :: act 
allocate(act)
call sub (act)
contains 
subroutine sub(dum)
class(*) :: dum
print*,sizeof(dum),'pass'
end subroutine
end
