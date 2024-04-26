      PROGRAM MAIN
      REAL RC/10./
      INTEGER A(10)/10*1/
      DO 10 I=2,10
        N = I
        A(I) = IBSET(I,N)
        A(I) = IBCLR(A(I),N+1)
        IF (RC.LE.10) THEN
          A(I) = A(I) / (N + 25) + 1
          N = N + 1
          A(I) = IBCLR(N,A(I))
        ENDIF
        A(I) = IBCLR(A(I-1),A(I)) + A(I)
   10 CONTINUE
C
      
      WRITE(6,1) A
    1 FORMAT(10I8)
      STOP
      END
