      PROGRAM MAIN
      INTEGER*2 A(10),B(10)                                             
      INTEGER*4 C(10),D(10)                                             
      INTEGER*1 G(10),H(10)                                             

      A=1                                                               
      B=1                                                               
      A=A+B                                                             

      C=1                                                               
      D=1                                                               
      C=C+D                                                             

      G=1                                                               
      H=1                                                               
      H=H+G                                                             

      CALL SUB(A,C,H)                                                 
      STOP                                                              
      END                                                               

      SUBROUTINE SUB(A,C,H)                                           
      INTEGER*2 A(10)                                                   
      INTEGER*4 C(10)                                                   
      INTEGER*1 H(10)                                                   
      DO 10 I=1,10                                                      
        IF(A(I) .NE. 2) GOTO 20                                         
        IF(C(I) .NE. 2) GOTO 30                                         
   10   IF(H(I) .NE. 2) GOTO 50                                         
                                                                       
      WRITE(6,*) 'OK'                                   
      GOTO 60                                                           
   20 WRITE(6,*) 'NG'                                
      GOTO 60                                                           
   30 WRITE(6,*) 'NG'                                
      GOTO 60                                                           
   50 WRITE(6,*) 'NG'                                
                                                                       
   60 RETURN
      END                                                               
