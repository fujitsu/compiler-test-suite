MODULE CHECK2
  CONTAINS
      SUBROUTINE   NOGOOD(MSG)                             
      CHARACTER    MSG*(*),WRTCON*50                                    
      WRTCON = MSG(1:0)                                           
      RETURN                                                            
      END SUBROUTINE                                                       
      SUBROUTINE L1CHCK(MSG)                     
      CHARACTER    MSG*(*)
      CALL NOGOOD(' ')                                       
      RETURN                                                            
      END SUBROUTINE
      SUBROUTINE L1CHK1(MSG)                           
      CHARACTER    MSG*(*)
      CALL   L1CHCK(MSG)                  
      RETURN                                                            
      END SUBROUTINE         
END

use CHECK2
print *,"PASS"
end
