      REAL*4 A(100),B(100)
      DATA A/100*1.9/,B/100*9.1/,N/0/
C
      DO 10 I=1,100
         IF(I.LT.73) THEN
            A(I) = A(I) / 0.3
            N = N + 1
            B(N) = B(N) * 0.3
         ENDIF
   10 CONTINUE
C
      WRITE(6,100) A,B
  100 FORMAT(1H ,6F13.6)
      STOP
      END
