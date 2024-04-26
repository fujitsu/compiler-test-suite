      PROGRAM MAIN                                                   
      DIMENSION X(5,5),Y(5,5),Z(5,5)                                    
      COMPLEX*8 X,Y,Z                                                   
      DO 11 I=1,5                                                       
        DO 21 J=1,5                                                     
          X(I,J)=(50.0, 30.0)                                           
  21    CONTINUE                                                        
  11  CONTINUE                                                          

      DO 12 I=1,5                                                       
        DO 22 J=1,5                                                     
          Y(I,J)=(25.0, 70.0)                                           
  22    CONTINUE                                                        
  12  CONTINUE                                                          

      DO 13 I=1,5                                                       
        DO 23 J=1,5                                                     
          Z(I,J)=CSQRT(X(I,J)+Y(I,J))                                   
  23    CONTINUE                                                        
  13  CONTINUE                                                          

      DO 100 I=1,5                                                      
        DO 200 J=1,5                                                    
          IF (Z(I,J).NE.(10.0, 5.0)) THEN                               
            WRITE(6,*) 'NG'
            WRITE(6,*) '        RIGHT  VALUE IS (10.000000,5.0000000)'  
            WRITE(6,*) '        ACTUAL VALUE IS ',Z(I,J)                
            STOP                                                        
          ENDIF                                                         
 200    CONTINUE                                                        
 100  CONTINUE                                                          
      WRITE(6,*) 'OK'
      STOP                                                              
      END                                                               
