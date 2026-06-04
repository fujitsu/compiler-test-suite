MODULE mod
CONTAINS

  FUNCTION func(x) RESULT(fval)
    IMPLICIT NONE
    REAL (KIND=4), VALUE :: x
    REAL (KIND=4) :: fval
    fval = x + 1
  END FUNCTION func

  SUBROUTINE test(u, a)
    REAL(KIND=4), DIMENSION(256), INTENT(IN) :: u
    REAL(KIND=4), DIMENSION(256), INTENT(OUT) :: a
    REAL(KIND=4) :: tmp

    !$OMP SIMD 
    DO l=1,100
       tmp=u(l)
       a(l)=func(tmp)
    END DO
  END SUBROUTINE test

END MODULE mod

use mod
    REAL(KIND=4), DIMENSION(256) :: a, b

    a = 1
    call test(a, b)
    if (all(b(1:100).eq.2)) then
      print *, 'PASS'
    else
      print *, 'NG', b
    endif
end
