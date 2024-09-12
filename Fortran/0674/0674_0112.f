      PROGRAM MAIN
      REAL*4  A(40),B(40),C(40)
      DATA  A,B/40*1.,40*2./,C/40*3./,NN/35/

      DO 10 I=1,NN
        DO 20 J=I,NN
         A(J) = B(I)+C(J)
  20    CONTINUE
        DO 30 J=I,NN
         B(J) = A(I)*C(J)
  30    CONTINUE
  10  CONTINUE

      WRITE(6,*) A
      WRITE(6,*) B
      STOP
      END
