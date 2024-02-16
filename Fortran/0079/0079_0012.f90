MODULE m
  integer::count=0
  TYPE t(k)
     INTEGER, KIND :: k
     REAL(k),POINTER :: vector(:) => NULL()
   CONTAINS
     FINAL :: finalize_t1s, finalize_t1v
  END TYPE t
  interface
     module SUBROUTINE finalize_t1s(x)
       TYPE(t(KIND(0.0))) x
     END SUBROUTINE finalize_t1s
     module SUBROUTINE finalize_t1v(x)
       TYPE(t(KIND(0.0))) x(:)
     END SUBROUTINE finalize_t1v
  end interface
CONTAINS
  module SUBROUTINE finalize_t1s(x)
    TYPE(t(KIND(0.0))) x
    IF (ASSOCIATED(x%vector)) DEALLOCATE(x%vector)
    count = count+1
  END SUBROUTINE finalize_t1s
  module SUBROUTINE finalize_t1v(x)
    TYPE(t(KIND(0.0))) x(:)
    DO i=LBOUND(x,1),UBOUND(x,1)
       IF (ASSOCIATED(x(i)%vector)) DEALLOCATE(x(i)%vector)
    END DO
    count = count+2
  END SUBROUTINE finalize_t1v
END MODULE m

SUBROUTINE example(n)
  USE m
  TYPE(t(KIND(0.0))) a,b(10),c(n,2)
  TYPE(t(KIND(0.0d0))) d(n,n)
END SUBROUTINE example

use m
call example(10)
if (count == 3)print *,'pass'
end
