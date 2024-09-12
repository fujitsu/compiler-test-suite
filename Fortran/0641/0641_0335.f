      PROGRAM MAIN

       REAL*4 TW1(100), TW2(100), TW3(100)
       DATA TW1/100*1/ 
       DATA TW2/100*1/ 
       DATA TW3/100*1/ 
       INTEGER J
       INTEGER II2, II1
       N = 60

       CALL INDATA (N)
       II2 = N / 4
       II1 = II2 * 4 + 1
                                                    
C$OMP PARALLEL SHARED (N,TW1,TW3,II1,TW2) PRIVATE (I,J)
C$OMP DO 
       DO I=1,100
        DO J=1,N-3,4
         TW1(I) = INT (TW1(I))
         TW2(I) = TW2(I) + J
         TW3(I) = SQRT (FLOAT (J))
         TW1(I) = INT (TW1(I))
         TW2(I) = 1 + TW2(I) + J
         TW3(I) = SQRT (FLOAT (J + 1))
         TW1(I) = INT (TW1(I))
         TW2(I) = 2 + TW2(I) + J
         TW3(I) = SQRT (FLOAT (J + 2))
         TW1(I) = INT (TW1(I))
         TW2(I) = 3 + TW2(I) + J
         TW3(I) = SQRT (FLOAT (J + 3))
        END DO
        DO J=II1,N,1
         TW1(I) = INT (TW1(I))
         TW2(I) = TW2(I) + J
         TW3(I) = SQRT (FLOAT (J))
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, 100) TW1, TW2, TW3
  100  FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,1H ,
     X   '--- TW2 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,1H ,'--- TW3 ---',/
     X   ,1H ,(3X,20(5(F17.6,2X)/)))
      END

      SUBROUTINE INDATA ( N )
       INTEGER N
       N = 60
      END
