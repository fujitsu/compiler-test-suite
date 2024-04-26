      REAL*4 A(100)
      LOGICAL*4 L(100)
      DATA A/100*1.0/,L/100*.FALSE./
      DO 10 I=1,100,2
         IF(L(I).AND.L(I+1).OR.A(I).NE.A(I+1)) GO TO 20
         A(I) = (A(I) + I) / I
         A(I) = A(I) * 0.3
   10 CONTINUE
   20 WRITE(6,1) A
    1 FORMAT(1H ,9F8.4)
      STOP
      END
