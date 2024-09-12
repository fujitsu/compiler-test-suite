        MODULE m1
          IMPLICIT NONE
          TYPE x_Base
            INTEGER       :: id  
          CONTAINS
            PROCEDURE  :: get => b_get
          END TYPE x_Base
        CONTAINS
          CHARACTER(len=1 ) FUNCTION b_get (d) 
            CLASS(x_Base)   , optional, INTENT(out) :: d  
             b_get='1'
             if ( kfun( d=d) /=1) print *,101
          END FUNCTION b_get
          integer function kfun( d )
            CLASS(x_Base)   , optional, INTENT(out) :: d  
            d%id=1
            kfun=d%id
          end function 
        END MODULE
        subroutine s1
        use m1
            class(x_Base), POINTER :: p
         call sub( p%get() )
        end
        print *,'pass'
        end
        subroutine sub(str)
        character(*)::str
        if (str/='111') print *,2002
        end