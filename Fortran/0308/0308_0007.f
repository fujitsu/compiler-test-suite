      PROGRAM MAIN                                                   
      INTEGER      J,X(10)                                              

      X=2                                                               
      J=11                                                              
      CALL SUB(X,J)                                                     

      DO 10 N=1,10                                                      
   10   IF ( X(N) .NE. 202) GOTO 20                                     
      PRINT *,'OK'                                      
      GOTO 30                                                           
   20 PRINT *,'NG'                                      
      PRINT *,X                                                         
   30 END                                                               

      SUBROUTINE SUB(B,J)                                               
      INTEGER J                                                         
      INTEGER A(10),B(10)                                               
      REAL    C(10),D(10),E(10)                                         
      C=1.0E+2                                                          
      D=1.0E+2                                                          
      A=1                                                               
      E=C+D                                                             
      DO 10 I= 1,10                                                     
 10    A(I)=B(I)                                                        
      DO 20 I= 1,10                                                     
 20    E=C+D                                                            
      IF (J.GT.10) E=C+D                                                
      IF (J.GT.7)  B=A+IFUN(C+D)                                        
      IF (A(1).NE.2 .OR. A(2).NE.2 .OR. A(3).NE.2 .OR.
     1    A(4).NE.2 .OR. A(5).NE.2 .OR. A(6).NE.2 .OR.
     2    A(7).NE.2 .OR. A(8).NE.2 .OR. A(9).NE.2 .OR.
     3    A(10).NE.2) WRITE (6,*) 'NG A=',A
      IF (B(1).NE.202 .OR. B(2).NE.202 .OR. B(3).NE.202 .OR.
     1    B(4).NE.202 .OR. B(5).NE.202 .OR. B(6).NE.202 .OR.
     2    B(7).NE.202 .OR. B(8).NE.202 .OR. B(9).NE.202 .OR.
     3    B(10).NE.202) WRITE (6,*) 'NG B=',B
      END                                                               

      INTEGER FUNCTION IFUN(R)                                          
      REAL R(10)                                                        
      IFUN=INT(R(1))                                                    
      IF (IFUN.NE.200) WRITE(6,*) 'NG IFUN=',IFUN
      END                                                               
