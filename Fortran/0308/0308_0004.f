      PROGRAM MAIN
      COMPLEX*8 A(10),B(10),FUNCX
      INTEGER C(10)                                                     
      CHARACTER*15 D(10),FUNCZ
      B=CMPLX(1.0D+5,1.0D+5)                                            
      A=FUNCX(B)                                                        
      C=8                                                               
      D=FUNCZ(C)                                                        

      DO 10 N=1,10                                                      
        IF ( A(N) .NE. (2.0D+5,2.0D+5)) GOTO 20                         
   10   IF ( D(N) .NE. 'PONTA & POCHI') GOTO 30                         
      PRINT *,'OK'                                      
      GOTO 40                                                           
   20 PRINT *,'NG'
      PRINT *,FUNCX(B)                                                  
      GOTO 40                                                           
   30 PRINT *,'NG'                               
      PRINT *,FUNCZ(C)                                                  

   40 STOP
      END
        COMPLEX*8 FUNCTION FUNCX(B)                                     
          COMPLEX*8 B(10)                                               
          FUNCX=B(1)+B(5)                                               


          END FUNCTION FUNCX                                            

        CHARACTER*15 FUNCTION FUNCZ(I)                                  
          INTEGER I(10)                                                 
          CHARACTER*8 U_ACHAR 
          FUNCZ = U_ACHAR(I)//'POCHI'                                     
          END FUNCTION FUNCZ                                            

        CHARACTER*8 FUNCTION U_ACHAR(I)                                   
          INTEGER I(10),N                                               
          CHARACTER*8 CHAR1                                             
          CHAR1='PONTA & '                                              
          N=I(5)                                                        
          IF(N .EQ. 8) THEN                                             
            U_ACHAR=CHAR1                                                 
          ENDIF                                                         
        END FUNCTION U_ACHAR                                              
