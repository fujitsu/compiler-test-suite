        MODULE m1
          IMPLICIT NONE
          TYPE x_Base
            INTEGER                         :: id  
          CONTAINS
            PROCEDURE  :: get => b_get
          END TYPE x_Base
        CONTAINS
          CHARACTER(len=1 ) FUNCTION b_get (d)
            CLASS(x_Base)   , INTENT(IN) :: d  
             b_get='1'
          END FUNCTION b_get
        END MODULE
        subroutine s1
        use m1
            CHARACTER(len=1) :: str
            class(x_Base), POINTER :: p
         call sub( p%get()//p%get()//p%get() )
        end
        
        print *,'pass'
        end
        subroutine sub(str)
        character(*)::str
        if (str/='111') print *,2002
        end
