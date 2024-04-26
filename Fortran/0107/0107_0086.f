      PROGRAM MAIN                                                  
      REAL A(10),B(10),C(10)                                           
      EQUIVALENCE (A,B)                                                

      REAL X                                                           
      EQUIVALENCE (C,X)                                                

      DATA B/10*1.0/                                                   

      C=A                                                              

      DO 10 I=1,10                                                     
        IF (C(I) .NE. 1.0) THEN                                        
          WRITE (6,*) '**** NG **** C(',C,')'               
          GOTO 20                                                      
        END IF                                                         
  10  CONTINUE                                                         
      WRITE (6,*) '**** OK ****'                            
  20  CONTINUE                                                         

      STOP                                                             
      END                                                              
