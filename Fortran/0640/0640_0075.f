      REAL*4  A(20,20),B(20,20),C(20,20)
      COMPLEX*8 C1(20,20),C2(20,20),C3(20,20)
      DATA    A,B,C/400*1.,400*2.,400*3./,N/19/
      DATA    C1,C2,C3/400*(1.,2.),400*(2.,3.),400*(-1.,-2.)/
      DO 10 I=2,N
       DO 20 J=2,N
        NX=N/2
        RX=FLOAT(I)
        RY=FLOAT(J)
        CALL  SUB1(C2(I,J))
        C2(I,J)=C2(I,J)+C3(I,J)-CMPLX(RX,RY)
        C3(I,J)=C1(I,J)-C2(I,J)
        DO 30 K=2,NX
          A(I,J)=B(I,J)+C(I,J)
          B(I,J)=A(J,I)*2.-C(I,J)
 30     CONTINUE
 20    CONTINUE
       C1(I,I)=C2(I,I)+C3(I,1)
       DO 40 J=2,N-1
         RX=C1(I,J)-C2(I,J)
         RY=C2(I,J)-C3(I,J)
         C(I,J)=C(I,J)-MIN1(RX,RY)
 40    CONTINUE
 10   CONTINUE
      WRITE(6,*) ((C1(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((C2(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((C3(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      STOP
      END
      SUBROUTINE  SUB1(X)
      COMPLEX*8 X
      X=X+(1.,2.)
      RETURN
      END
