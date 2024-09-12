      PROGRAM MAIN
      REAL*4  A(50,50),B(50,50),C(50,50)
      DATA  A,B/2500*1.,2500*2./,C/2500*3./,NN/50/
      CALL SUB(A,B,C,NN)
      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      STOP
      END
      SUBROUTINE SUB(A,B,C,NN)
      REAL*4  A(NN,NN),B(NN,NN),C(NN,NN)
      NX=NN-5

      DO 10 I=2,NX
        DO 20 J=2,I+1
         A(I,J) = C(I,I)+B(I+1,J)
  20    CONTINUE
        DO 30 J=I,1,-1
         C(I,J) = B(I,I)/A(I+1,J+1)
  30    CONTINUE
        DO 40 J=1,I
         B(I,J) = A(I,I)*C(I+1,J)
  40    CONTINUE
  10  CONTINUE

      RETURN
      END
