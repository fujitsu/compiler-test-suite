module mod
  type ty
  SEQUENCE
  integer :: x=10
  end type
  type(ty) :: t1,t2
  !$omp threadprivate(t1,t2)
  type(ty) :: a1(1),a2(2)
  !$omp threadprivate(a1,a2)
end

use mod
  if (t1%x /= 10) print *,11
  if (t2%x /= 10) print *,12,t2%x
  if (a1(1)%x /= 10) print *,13
  if (a2(2)%x /= 10) print *,14,t2%x
  print *,'pass'
end program

