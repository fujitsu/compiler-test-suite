MODULE mod
CONTAINS

  FUNCTION func(x) RESULT(fval)
    IMPLICIT NONE
    INTEGER (KIND=8), VALUE :: x
    INTEGER (KIND=8), POINTER :: fval
    allocate(fval)
    fval = x + 1
  END FUNCTION func

  SUBROUTINE test(u, a)
    INTEGER(KIND=8), POINTER, DIMENSION(:), INTENT(IN) :: u
    INTEGER(KIND=8), POINTER, DIMENSION(:), INTENT(OUT) :: a
    INTEGER(KIND=8) :: tmp(256)
    allocate(a(256))

    !$OMP SIMD 
    DO l=1,100
       tmp(l)=u(l)
       a(l)=func(tmp(l))
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
