      PROGRAM MAIN                                                   
      COMPLEX*8 X(5,5),Y(5,5),Z(5,5)                                    

      X=(50.0, 30.0)                                                    
      Y=(25.0, 70.0)                                                    
      Z=CSQRT(X+Y)                                                      

      DO 10 I=1,5                                                       
        DO 20 J=1,5                                                     
          IF (Z(I,J).NE.(10.0, 5.0)) THEN                               
            WRITE(6,*) 'NG'
            WRITE(6,*) '        RIGHT  VALUE IS (10.000000,5.0000000)'  
            WRITE(6,*) '        ACTUAL VALUE IS ',Z(I,J)                
            STOP                                                        
          ENDIF                                                         
  20    CONTINUE                                                        
  10  CONTINUE                                                          
      WRITE(6,*) 'OK'
      STOP                                                              
      END                                                               
