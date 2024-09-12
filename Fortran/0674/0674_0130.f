      PROGRAM MAIN
      REAL*4  A(20,20,20),B(20,20,20),C(20,20,20)
      DATA  A,B/8000*1.,8000*2./,C/8000*3./,NN/20/
      CALL  SUB(A,B,C,NN)
      WRITE(6,*) (((A(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) (((B(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) (((C(I,J,K),I=1,10),J=1,10),K=1,10)
      STOP
      END
      SUBROUTINE SUB(A,B,C,NN)
      REAL*4  A(NN,NN,NN),B(NN,NN,NN),C(NN,NN,NN)

      NX=NN/2

      DO 10 K=2,NX
       DO 10 J=NX,2,-1
        DO 20 I=10,2,-1
         A(I*2,J,6) =B(4,J+1,2*I-1)+C(3,J,I)
  20    CONTINUE
        DO 30 I=9,1,-1
         B(I*2,J,3) = A(5,J-1,I*2+1)*C(2,K,I)
  30    CONTINUE
        DO 40 I=10,2,-1
         C(I*2,J,3) = A(5,J-1,I*2)*B(3,J+1,I)
  40    CONTINUE
  10  CONTINUE

      RETURN
      END
