MODULE mod
CONTAINS

  FUNCTION func(x) RESULT(fval)
    IMPLICIT NONE
    CHARACTER , INTENT(IN) :: x
    CHARACTER  :: fval
    fval = char(ichar(x) + 1)
  END FUNCTION func

  SUBROUTINE test(u, a)
    CHARACTER, DIMENSION(256), INTENT(IN) :: u
    CHARACTER, DIMENSION(256), INTENT(OUT) :: a
    CHARACTER :: tmp(256)

    !$OMP SIMD 
    DO l=1,100
       tmp(l)=u(l)
       a(l)=func(tmp(l))
    END DO
  END SUBROUTINE test

END MODULE mod

use mod
    CHARACTER, DIMENSION(256) :: a, b

    a = 'a'
    call test(a, b)
    if (all(b(1:100).eq.'b')) then
      print *, 'PASS'
    else
      print *, 'NG', b
    endif
end
