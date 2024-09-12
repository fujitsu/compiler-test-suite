      PROGRAM MAIN

       REAL*4 TW1(10,10,10), TW2(10,10,10), TW3(10,10,10)
       DATA TW1/1000*1/ 
       DATA TW2/1000*1/ 
       DATA TW3/1000*1/ 
       INTEGER J
       INTEGER N
       PARAMETER (N = 10)
       INTEGER II6, II5, II4, II3, II2, II1
       REAL RR4, RR3, RR2, RR1

                                                    
C$OMP PARALLEL SHARED (TW1,TW2,TW3) PRIVATE (RR1,II1,II3,II2,II4,II5,II6
C$OMP& ,RR2,RR3,RR4,I,K,J)
C$OMP DO 
       DO I=1,10
        DO K=1,10
         II3 = (11 - K) / 4
         II2 = K + II3 * 4
         DO J=K,7,4
          TW1(J,K,I) = TW1(J,K,I) * 2
          TW1(J+1,K,I) = TW1(J+1,K,I) * 2
          TW1(J+2,K,I) = TW1(J+2,K,I) * 2
          TW1(J+3,K,I) = TW1(J+3,K,I) * 2
          TW2(J,K,I) = TW2(J,K,I) + J
          TW2(J+1,K,I) = 1 + TW2(J+1,K,I) + J
          TW2(J+2,K,I) = 2 + TW2(J+2,K,I) + J
          TW2(J+3,K,I) = 3 + TW2(J+3,K,I) + J
          II4 = MAX (I, J, K)
          II5 = MAX (I, J + 1, K)
          II6 = MAX (I, J + 2, K)
          II1 = MAX (I, J + 3, K)
          RR2 = FLOAT (II4)
          RR3 = FLOAT (II5)
          RR4 = FLOAT (II6)
          RR1 = FLOAT (II1)
          TW3(J,K,I) = SQRT (RR2)
          TW3(J+1,K,I) = SQRT (RR3)
          TW3(J+2,K,I) = SQRT (RR4)
          TW3(J+3,K,I) = SQRT (RR1)
         END DO
         DO J=II2,10,1
          TW1(J,K,I) = TW1(J,K,I) * 2
          TW2(J,K,I) = TW2(J,K,I) + J
          II1 = MAX (I, J, K)
          RR1 = FLOAT (II1)
          TW3(J,K,I) = SQRT (RR1)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, 100) TW1, TW2, TW3
  100  FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,200(5(F17.6,2X)/)),/,1H ,
     X   '--- TW2 ---',/,1H ,(3X,200(5(F17.6,2X)/)),/,1H ,'--- TW3 ---',
     X   /,1H ,(3X,200(5(F17.6,2X)/)))
      END
