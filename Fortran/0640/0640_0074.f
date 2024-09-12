      REAL*4  A(20,20),B(20,20),C(20,20),D(20,20)
      COMPLEX*8 C1(20,20),C2(20,20)
      DATA    A,B,C,D/400*4.,400*1.,400*2.,400*3./,N/19/
      DATA    C1,C2/400*(1.,2.),400*(2.,3.)/
      DO 10 I=1,N
       DO 20 J=3,N
         RX=A(I,J)+IMAG(C1(I,J))
         RY=D(I,J)-B(I,J)
         CALL  SUB1(C1(I,J))
         A(I,J)=B(I,J)+REAL(C2(I,J))
         D(I,J)=B(I,J)*2.-A(I,J-1)
         C1(I,J)=CMPLX(RX,RY)-C2(I,J)
 20    CONTINUE
       DO 30 J=2,N-1
         RX=FLOAT(J)
         CALL  SUB2(B(1,I),RX)
         B(J,I)=B(1,I)+C(I,J)
         C(J,I)=C(J+1,I+1)+A(J,I)
 30    CONTINUE
       DO 40 J=1,N-2
         C1(J,I)=CMPLX(B(1,I)+D(I,J))
         CALL  SUB1(C2(I,J))
         C2(J,I)=C1(J+1,I+1)+CMPLX(A(J,I+1),C(I,J))
 40    CONTINUE
 10   CONTINUE
      WRITE(6,*) ((C1(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((C2(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      STOP
      END
      SUBROUTINE  SUB1(X)
      COMPLEX*8 X
      X=X+1
      RETURN
      END
      SUBROUTINE  SUB2(X,Y)
      X=X+1.
      Y=Y+1.
      RETURN
      END
