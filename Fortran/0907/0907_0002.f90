Use iso_fortran_env
type(LOCK_TYPE) :: obj
interface 
 subroutine sub(jj)
Use iso_fortran_env
type(LOCK_TYPE),intent(in) :: jj
end subroutine sub

end interface

call sub(obj)
end
subroutine sub(jj)
Use iso_fortran_env
type(LOCK_TYPE),intent(in) :: jj
end subroutine sub

