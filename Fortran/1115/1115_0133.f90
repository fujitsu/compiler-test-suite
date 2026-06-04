MODULE mod
CONTAINS

  FUNCTION func(x) RESULT(fval)
    IMPLICIT NONE
    COMPLEX (KIND=4), VALUE :: x
    COMPLEX (KIND=4) :: fval
    fval = x + 1
  END FUNCTION func

  SUBROUTINE test(u, a)
    COMPLEX(KIND=4), DIMENSION(256), INTENT(IN) :: u
    COMPLEX(KIND=4), DIMENSION(256), INTENT(OUT) :: a
    COMPLEX(KIND=4) :: tmp(256)

    !$OMP SIMD 
    DO l=1,100
       tmp(l)=u(l)
       a(l)=func(tmp(l))
    END DO
  END SUBROUTINE test

END MODULE mod

use mod
    COMPLEX(KIND=4), DIMENSION(256) :: a, b

    a = 1
    call test(a, b)
    if (all(b(1:100).eq.2)) then
      print *, 'PASS'
    else
      print *, 'NG', b
    endif
end
