MODULE mod
CONTAINS

  FUNCTION func(x) RESULT(fval)
    IMPLICIT NONE
    INTEGER (KIND=8), POINTER, INTENT(IN) :: x
    INTEGER (KIND=8), POINTER :: fval
    allocate(fval)
    fval = x + 1
  END FUNCTION func

  SUBROUTINE test(u, a)
    INTEGER(KIND=8), POINTER, DIMENSION(:), INTENT(IN) :: u
    INTEGER(KIND=8), POINTER, DIMENSION(:), INTENT(OUT) :: a
    INTEGER(KIND=8), POINTER :: tmp

    allocate(tmp)
    allocate(a(256))
    !$OMP SIMD 
    DO l=1,100
       tmp=u(l)
       a(l)=func(tmp)
    END DO
  END SUBROUTINE test

END MODULE mod

use mod
    INTEGER(KIND=8), POINTER, DIMENSION(:) :: a, b
    allocate(a(256))

    a = 1
    call test(a, b)
    if (all(b(1:100).eq.2)) then
      print *, 'PASS'
    else
      print *, 'NG', b
    endif
end
