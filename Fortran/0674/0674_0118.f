      PROGRAM MAIN
      REAL*8  A(40),B(40),C(40)
      DATA  A,B/40*1.D0,40*2.D0/,C/40*3.D0/,NN/35/

      DO 10 I=2,NN
        DO 20 J=I+1,1,-1
         A(J) = B(I)+C(J)
  20    CONTINUE
        DO 30 J=1,I+1
         C(J) = B(I)/A(J)
  30    CONTINUE
        DO 40 J=I+1,NN
         B(J) = A(I)-C(J)
  40    CONTINUE
  10  CONTINUE

      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      STOP
      END
