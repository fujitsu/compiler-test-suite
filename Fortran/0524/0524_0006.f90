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
      if(d%id/=1) print *,301
  END FUNCTION b_get
END MODULE
subroutine s1
use m1
    TYPE (x_e  )   :: dGrp 
    CHARACTER(len=1                    ) :: str
      allocate(dGrp%p)
      dGrp%p%id=1
      str = dGrp%p%get()
      if(str/='1') print *,90
end
call s1
print *,'pass'
end
