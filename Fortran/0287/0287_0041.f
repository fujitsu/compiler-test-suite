      PROGRAM TEST
       REAL*4 TW1(10), TW2(10), TW3(10)
       DATA TW1/10*1/
       DATA TW2/10*1/
       DATA TW3/10*1/
       INTEGER J
       INTEGER II2, II1

       CALL INDATA (N)
       II1 = N  + 1

       DO I=1,10
       DO J=1,N
         TW1(I) = 1+ TW1(I)
         TW2(I) =  TW2(I) + j
         TW3(I) =  (FLOAT (j+1))
        END DO
        DO J=N+1,N
         TW1(I) = 2 + TW1(I)
        END DO
       END DO

       WRITE (6, *) TW1
       WRITE (6, *) TW3
      END

      SUBROUTINE INDATA ( N )
       INTEGER N
       N = 10
      END

