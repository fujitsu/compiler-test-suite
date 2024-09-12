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
  END FUNCTION b_get

  SUBROUTINE z 
    TYPE (x_e  )   :: dGrp 
    CHARACTER(len=1                    ) :: str
      str = dGrp%p%get()
  END SUBROUTINE
END MODULE
print *,'pass'
end
