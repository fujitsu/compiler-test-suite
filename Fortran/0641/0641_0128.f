      PROGRAM MAIN
       COMMON A
       REAL*8 A(10), B(10), C(10)
       DATA C/10*0/ 
       DATA A/0,9*1/ 
       EQUIVALENCE (N, A(1)), (B, A(2))
       DO I=1,10
        IF (I .GT. 2) THEN
         N = N + 1
         C(I) = B(N) + N
        END IF
       END DO

       WRITE (6, *) N, C
       STOP 
      END
