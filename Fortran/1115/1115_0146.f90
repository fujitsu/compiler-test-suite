MODULE mod
  type TAG
     integer m
  end type TAG
CONTAINS

  FUNCTION func(x) RESULT(fval)
    IMPLICIT NONE
    TYPE(TAG), INTENT(IN) :: x
    TYPE(TAG) :: fval
    fval%m = x%m + 1
  END FUNCTION func

  SUBROUTINE test(u, a)
    TYPE(TAG), DIMENSION(256), INTENT(IN) :: u
    TYPE(TAG), DIMENSION(256), INTENT(OUT) :: a
    TYPE(TAG) :: tmp

    !$OMP SIMD 
    DO l=1,100
       tmp=u(l)
       a(l)=func(tmp)
    END DO
  END SUBROUTINE test

END MODULE mod

use mod
    TYPE(TAG), DIMENSION(256) :: a, b

    a%m = 1
    call test(a, b)
    if (all(b(1:100)%m.eq.2)) then
      print *, 'PASS'
    else
      print *, 'NG', b
    endif
end
