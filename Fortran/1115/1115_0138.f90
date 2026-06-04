MODULE mod
CONTAINS

  FUNCTION func(x) RESULT(fval)
    IMPLICIT NONE
    INTEGER (KIND=8), INTENT(IN) :: x
    INTEGER (KIND=8) :: fval
    fval = x + 1
  END FUNCTION func

  SUBROUTINE test(u, a)
    INTEGER(KIND=8), DIMENSION(256), INTENT(IN) :: u
    INTEGER(KIND=8), DIMENSION(256), INTENT(OUT) :: a
    INTEGER(KIND=8) :: tmp

    !$OMP SIMD 
    DO l=1,100
       tmp=u(l)
       a(l)=func(tmp)
    END DO
  END SUBROUTINE test

END MODULE mod

use mod
    INTEGER(KIND=8), DIMENSION(256) :: a, b

    a = 1
    call test(a, b)
    if (all(b(1:100).eq.2)) then
      print *, 'PASS'
    else
      print *, 'NG', b
    endif
end
