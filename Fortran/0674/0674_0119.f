      PROGRAM MAIN
      REAL*4  A(40),B(40),C(40)
      DATA  A,B/40*1.,40*2./,C/40*3./,NN/35/

      DO 10 I=2,NN
        DO 20 J=1,I-1
         A(J) = B(J)+C(I)
  20    CONTINUE
        DO 30 J=2,I+1,2
         C(J) = B(I)/A(J-1)
  30    CONTINUE
        DO 40 J=NN,I+1,-1
         B(J) = A(I)*C(J)
  40    CONTINUE
  10  CONTINUE

      WRITE(6,*) A
      WRITE(6,*) B
      STOP
      END
