      CALL SUB
      END

      SUBROUTINE SUB

      REAL*4 A(10,10,10),AMAX(10,10),AMIN(10,10)                               

      A=5.
      DO 11 J=1,10                                                      
       DO 11 I=1,10                                                     
        AMAX(I,J) = 0.                                                  
        AMIN(I,J) = 0.                                                  
   11 CONTINUE                                                          

      DO 30 J=1,10                                                     
       DO 20 K=1,10                                                    
        DO 40 I=1,10                                                      
         IF(AMAX(I,J) .LT. A(I,J,K)) THEN                               
           AMAX(I,J) = A(I,J,K)                                         
         ENDIF                                                          
   40   CONTINUE                                                          
   20  CONTINUE                                                        
   30 CONTINUE                                                         

      PRINT  *,AMAX,AMIN                                                

      END                                                               
