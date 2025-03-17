      REAL*8 A(20),B(20,20),C(20,20)
      DATA  A,B,C/20*2.0,400*1.0,400*0.0/
      DO 10 J=1,10
        DO 10 I=1,10
          C(I,J) = A(I) + B(I,J)
          C(I+1,J) = A(I+1) * B(I+1,J)
          C(I+2,J) = A(I+2) / B(I+2,J)
   10 CONTINUE
      WRITE(6,*) C
      STOP
      END
