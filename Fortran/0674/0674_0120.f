      PROGRAM MAIN
      REAL*4  A(400),B(400),C(400)
      DATA  A,B/400*1.,400*2./,C/400*3./,NN/400/
      CALL SUB(A,B,C,NN)
      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      STOP
      END
      SUBROUTINE SUB(A,B,C,NNN)
      REAL*4  A(NNN),B(NNN),C(NNN)
      NN=NNN-20

      DO 10 I=2,NN
        DO 20 J=1,I-1
         A(J) = B(J)+C(I)
  20    CONTINUE
        DO 30 J=I+1,NN
         C(J) = B(I)/A(J-1)
  30    CONTINUE
        DO 40 J=1,I-1
         B(J) = A(I)*C(J)
  40    CONTINUE
  10  CONTINUE

      RETURN
      END
