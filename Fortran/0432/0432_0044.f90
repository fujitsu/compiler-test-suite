module mod
  type ty
  SEQUENCE
  integer :: x=10
  end type
contains
subroutine sub()
  type(ty),save :: t1,t2
  !$omp threadprivate(t1,t2)
  if (t1%x /= 10) print *,11
  if (t2%x /= 10) print *,12,t2%x
call isub()
contains
subroutine isub()
  type(ty),save :: a1(1),a2(2)
  !$omp threadprivate(a1,a2)
  if (a1(1)%x /= 10) print *,13
  if (a2(2)%x /= 10) print *,14,t2%x
end subroutine
end subroutine
end

use mod
call sub()
  print *,'pass'
end program

