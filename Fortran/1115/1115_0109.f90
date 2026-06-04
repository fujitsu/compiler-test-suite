MODULE mod
CONTAINS

  FUNCTION func(x) RESULT(fval)
    IMPLICIT NONE
    REAL (KIND=8), INTENT(IN) :: x
    REAL (KIND=8) :: fval
    fval = x + 1
  END FUNCTION func

  SUBROUTINE test(u, a)
    REAL(KIND=8), DIMENSION(256), INTENT(IN) :: u
    REAL(KIND=8), DIMENSION(256), INTENT(OUT) :: a

    !$OMP SIMD
    DO l=1,100
       a(l)=func(u(l)+0)
    END DO
  END SUBROUTINE test

END MODULE mod

use mod
    REAL(KIND=8), DIMENSION(256) :: a, b

    a = 1
    call test(a, b)
    if (all(b(1:100).eq.2)) then
      print *, 'PASS'
    else
      print *, 'NG', b
    endif
end
