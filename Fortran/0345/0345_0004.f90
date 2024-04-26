MODULE CHECK2
 CONTAINS
      SUBROUTINE   NOGOOD(MSG)                             
      CHARACTER    MSG*(*)
      CHARACTER    WRTCON*50                                    
        WRTCON = MSG(1:1)                                           
      END SUBROUTINE                                                       

      SUBROUTINE CHRCHCK()
        CALL NOGOOD(' ')                                       
      END SUBROUTINE                                                       

      SUBROUTINE CHRCHK2()
        CALL CHRCHCK()
      END SUBROUTINE         
END 

use check2
character msg*(1)
call nogood(msg)
print *,'pass'
end
