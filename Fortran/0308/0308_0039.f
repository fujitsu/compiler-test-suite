      INTEGER*4 I04A   ,I04B                                            
      COMPLEX*8 C08A(5),C08B(5),C08C,C08D(5),C08E                       
      DATA C08B/(1.0,0.1),(2.0,0.2),(3.0,0.3),(4.0,0.4),(5.0,0.5)/      

      I04A=INT(2.5)                                                     
      I04B=I04A+1                                                       

      C08A=C08B +SIN(CMPLX(I04B+2))                                     
      C08C=    CSQRT(CMPLX(I04B+2))                                     
      CALL SUB(C08D,C08E)                                               

      DO 10 I=1,5                                                       
   10   IF(C08A(I) .NE. C08D(I)) GOTO 20                                

      IF(C08C .NE. C08E) GOTO 30                                        

      WRITE(6,*) 'OK'
      GOTO 40                                                           
   20 WRITE(6,*) 'NG'
      WRITE(6,*) 'C08C=',C08C                                           
      GOTO 40                                                           
   30 WRITE(6,*) 'NG'
      WRITE(6,*) 'C08A=',C08A                                           

   40 STOP                                                              
      END                                                               

      SUBROUTINE SUB(C08D,C08E)                                         
      COMPLEX*8 C08D(5),C08E,C08F(5)                                    
      DATA C08F/(1.0,0.1),(2.0,0.2),(3.0,0.3),(4.0,0.4),(5.0,0.5)/      

      C08D=C08F +SIN(CMPLX(5))                                          
      C08E=    CSQRT(CMPLX(5))                                          

      RETURN                                                            
      END                                                               
