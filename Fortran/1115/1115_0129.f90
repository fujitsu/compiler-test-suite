MODULE mod
CONTAINS

  FUNCTION func(x) RESULT(fval)
    IMPLICIT NONE
    CHARACTER , VALUE :: x
    CHARACTER  :: fval
    fval = char(ichar(x) + 1)
  END FUNCTION func

  SUBROUTINE test(u, a)
    CHARACTER, DIMENSION(256), INTENT(IN) :: u
    CHARACTER, DIMENSION(256), INTENT(OUT) :: a
    CHARACTER :: tmp

    !$OMP SIMD 
    DO l=1,100
       tmp=u(l)
       a(l)=func(tmp)
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
