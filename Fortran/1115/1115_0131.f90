MODULE mod
  type TAG
     integer m
  end type TAG

  public :: assignment (=)
  interface assignment (=)
    module procedure assign
  end interface
CONTAINS
  subroutine assign(x, y)
  type(TAG), intent(out) :: x
  type(TAG), intent(in) :: y
  x%m = y%m
  end subroutine assign

  FUNCTION func(x) RESULT(fval)
    IMPLICIT NONE
    CLASS(TAG), INTENT(IN) :: x
    CLASS(TAG), POINTER :: fval
    allocate(fval)
    fval%m = x%m + 1
  END FUNCTION func

  SUBROUTINE test(u, a)
    CLASS(TAG), POINTER, DIMENSION(:), INTENT(IN) :: u
    CLASS(TAG), POINTER, DIMENSION(:), INTENT(OUT) :: a
    CLASS(TAG), POINTER :: tmp
    allocate(tmp)
    allocate(a(256))

    !$OMP SIMD 
    DO l=1,100
       tmp%m=u(l)%m
       a(l)=func(tmp)
    END DO
  END SUBROUTINE test

END MODULE mod

use mod
    CLASS(TAG), POINTER, DIMENSION(:) :: a, b
    allocate(a(256), b(256))

    a%m = 1
    call test(a, b)
    if (all(b(1:100)%m.eq.2)) then
      print *, 'PASS'
    else
      print *, 'NG', b%m
    endif
end
