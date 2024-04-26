      PROGRAM MAIN                                                   
      COMPLEX*8 A,B                                                     
      COMPLEX*8 ANS(5,5)                                                

      A=(7.0, 10.0)                                                     
      B=(5.0, 6.0)                                                      
      CALL SUB(A,B,ANS)                                                 

      DO 10 I=1,5                                                       
        DO 20 J=1,5                                                     
          IF (ANS(I,J).NE.(10.0, 5.0)) THEN                             
            WRITE(6,*) 'NG'
            WRITE(6,*) '        RIGHT  VALUE IS (10.000000,5.0000000)'  
            WRITE(6,*) '        ACTUAL VALUE IS ',ANS(I,J)              
            STOP                                                        
          ENDIF                                                         
  20    CONTINUE                                                        
  10  CONTINUE                                                          
      WRITE(6,*) 'OK'
      STOP                                                              
      END                                                               

      SUBROUTINE SUB(A,B,Z)                                             
      COMPLEX*8 A,B                                                     
      COMPLEX*8 X(5,5),Z(5,5)                                           

      X=(65.0, 93.0)                                                    
      Z=CSQRT(CSQRT(A+B)+CSQRT(A-(1.0,-44.0)+B)+X)                      

      RETURN                                                            
      END                                                               
