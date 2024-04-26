      PROGRAM MAIN                                                   
      REAL*4 A(10),B(10)                                                
      REAL*8 C(10),D(10)                                                
      A=1.0E+5                                                          
      B=1.0E+5                                                          
      A=A+B                                                             

      C=1.0D+5                                                          
      D=1.0D+5                                                          
      C=C+D                                                             

      CALL SUB(A,C)    
      STOP                                                              
      END                                                               

      SUBROUTINE SUB(A,C)                                             
      REAL*4 A(10)                                                      
      REAL*8 C(10)                                                      

      DO 10 I=1,10                                                      
        IF(A(I) .NE. 2.0E+5) GOTO 20                                    
        IF(C(I) .NE. 2.0D+5) GOTO 30                                    

   10 CONTINUE
      WRITE(6,*) 'OK'                                   
      GOTO 50                                                           
   20 WRITE(6,*) 'NG'                              
      WRITE(6,*) 'A=',A                                                 
      GOTO 50                                                           
   30 WRITE(6,*) 'NG'                              
      WRITE(6,*) 'C=',C                                                 
      GOTO 50                                                           

   50 RETURN                                                            
      END                                                               
