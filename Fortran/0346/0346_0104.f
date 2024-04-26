      LOGICAL    L(10)
      DATA       L/5*.TRUE.,5*.FALSE./
      DIMENSION  A(10,10),B(10,10),C(10,10)
      DATA       A,B,C/100*1.0,100*2.0,100*3.0/
      DO 10 J=1,10
        DO 10 I=1,10
          IF(L(I)) GO TO 10
          A(I,J) = B(I,J) + C(I,J)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
