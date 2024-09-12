program test

type ty1
integer :: i 
end type 

type,  extends(ty1) ::ty2
integer :: j 
end type

type(ty2) :: act 

call sub (act)
contains 
subroutine sub(dum)
class(*) :: dum
print*,sizeof(dum),'pass'
end subroutine
end
