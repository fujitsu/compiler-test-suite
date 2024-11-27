program main
use iso_fortran_env
interface
subroutine s(d)
import LOCK_TYPE
type(LOCK_TYPE) :: d
end subroutine
end interface
type(LOCK_TYPE) :: a(2)
call s(a(1))
end 
subroutine s(d)
use iso_fortran_env
type(LOCK_TYPE) :: d
end subroutine

