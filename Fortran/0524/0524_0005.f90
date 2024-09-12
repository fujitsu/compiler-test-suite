MODULE m1
  IMPLICIT NONE
  TYPE x_Base
    INTEGER                         :: id  
  CONTAINS
    PROCEDURE  :: get => b_get
  END TYPE x_Base
  TYPE x_e
    class(x_Base), POINTER :: p
  END TYPE x_e

CONTAINS
  CHARACTER(len=1 ) FUNCTION b_get (d)
    CLASS(x_Base)   , INTENT(IN) :: d  
     b_get='1'
  END FUNCTION b_get
END MODULE
subroutine s1
use m1
    TYPE (x_e  )   :: g 
    CHARACTER(len=1) :: str
      str = g%p%get()
end
print *,'pass'
end
