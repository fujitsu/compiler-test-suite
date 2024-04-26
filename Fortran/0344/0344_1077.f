      REAL*4 A(100),B(100)
      DATA A/100*3.1/,B/100*3.4/,N/1/
C
      DO 10 I=1,100
         IF(I.LT.71) THEN
            B(N) = B(N) / 0.002
            A(I) = A(I) * N
            N = N + 1
            B(N) = B(N) + SIN(FLOAT(N))
         ENDIF
   10 CONTINUE
C
      WRITE(6,100) A,B
  100 FORMAT(1H ,6F13.6)
      STOP
      END
