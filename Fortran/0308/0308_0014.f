      INTEGER*4 I,A(5),B(5),C(5),ERROR                                  
      DATA      B/ 0, 1, 2, 3, 4/                                       
     /         ,C/ 1,11,21,31,41/                                       
     /         ,ERROR/0/                                                

      DO 10 I=1,10                                                      
   10   A=1                                                             
      DO 20 I=1,10                                                      
   20   A=A+B                                                           
      DO I=1,5                                                          
        IF(A(I) .NE. C(I)) THEN                                         
          ERROR=ERROR+1                                                 
        ENDIF                                                           
      ENDDO                                                             
      IF(ERROR .EQ. 0) THEN                                             
        WRITE(6,*) 'OK'                           
      ELSE                                                              
        WRITE(6,*) 'NG'                           
      ENDIF                                                             
      STOP                                                              
      END                                                               
