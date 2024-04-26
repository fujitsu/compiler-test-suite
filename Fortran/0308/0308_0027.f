      INTEGER*4    I                                                    
      COMPLEX*8    C8A(5),C8B(5)                                        

      DATA C8A/(1.0,0.1),(2.0,0.2),(3.0,0.3),(4.0,0.4),(5.0,0.5)/       
      DATA C8B/(56.0,0.1),(57.0,0.2),(58.0,0.3),(59.0,0.4),(60.0,0.5)/  

      DO 10 I=1,10                                                      
       C8A=C8A+CMPLX(I)                                                 
   10 CONTINUE                                                          
                                                                        
      DO 20 I=1,5                                                       
      IF(C8A(I) .NE. C8B(I)) GOTO 30                                    
   20 CONTINUE                                                          
                                                                        
      WRITE(6,*)'OK'                              
      GOTO 40                                                           
   30 WRITE(6,*)'NG'                              
      WRITE(6,*)C8A,C8B,I                                               
   40 STOP                                                              
      END                                                               
