      PROGRAM MAIN
      REAL*4  X,A(10),B(10),AV(10)
      DATA A/0.2,0.4,0.6,0.8,1.0,0.1,0.3,0.5,0.7,0.9/
      DATA B/2*1.2,2*1.4,2*1.6,2*2.2,2*3.4/,N/10/
C
      DO 10 I=1,N
         X = A(I) * B(I)
         IF(X.EQ.0.0) GO TO 99
         AV(I) = SQRT(ABS(X))
   10 CONTINUE
   99 CONTINUE
C
      WRITE(6,100) AV
  100 FORMAT(1H ,5F15.3)
      STOP
      END
