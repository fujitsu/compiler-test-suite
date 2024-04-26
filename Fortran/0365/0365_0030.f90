      DOUBLE PRECISION FUNCTION DPSUM(N,AA)                             
      INTEGER I,J,N,LD                                             
      PARAMETER(LD=1000)                                          
      DOUBLE PRECISION AA(LD,N), SUM                             
      SUM = 0.0D0                                               
      DO 10 J = 1,N                                            
         DO 20 I = 1,N                                        
            SUM = SUM + AA(I,J)                              
20       CONTINUE                                           
10    CONTINUE                                             
      DPSUM = SUM                                          
      RETURN                                             
      END                                               
      PROGRAM TEST
      DOUBLE PRECISION AA(1000,1000),DPSUM
      DO I=1,1000
      DO J=1,1000
      AA(I,J) = I+J
      END DO
      END DO
      PRINT *,SUM(AA),DPSUM(1000,AA)
      END
