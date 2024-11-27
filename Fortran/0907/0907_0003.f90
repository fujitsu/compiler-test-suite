module m1

Use iso_fortran_env
type ty
type(LOCK_TYPE) :: obj
end type
end module m1

program p
use m1
type(ty) :: kk

interface 
 subroutine sub(jj)
use m1
Use iso_fortran_env
type(ty),intent(in) :: jj
end subroutine sub

end interface




call sub(kk)
end
subroutine sub(jj)
use m1
Use iso_fortran_env
type(ty),intent(in) :: jj
end subroutine sub

