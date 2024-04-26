      PROGRAM MAIN                                                   
      INTEGER      A,B,C,X(10)                                          

      A=3                                                               
      B=9                                                               
      C=2                                                               
      CALL SUB(X,A,B,C)                                                 

      DO 10 N=1,10                                                      
   10   IF ( X(N) .NE. 1) GOTO 20                                       
      PRINT *,'OK'                                      
      GOTO 30                                                           
   20 PRINT *,'NG'                                      
      PRINT *,X                                                         
   30 END                                                               

      SUBROUTINE SUB(A,I,J,K)                                           
      INTEGER A(10),I,J,K                                               
      A=0                                                               
      A(2:8:1)=1                                                        
      A(1:10:3)=1                                                       
      A(I:J:K)=1                                                        
      A(10:1:-2)=1                                                      
      END                                                               
