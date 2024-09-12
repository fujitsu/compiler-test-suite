      REAL*4  A(20,20),B(20,20),C(20,20),D(20,20)
      DATA    A,B,C,D/400*4.,400*1.,400*2.,400*3./,N/19/
      DO 10 I=1,N
       DO 20 J=3,N
         CALL  SUB1(D(I,N))
         A(I,J)=B(I,J)+C(I,J)
         D(I,J)=B(I,J)*2.-A(I,J-1)
 20    CONTINUE
       DO 30 J=2,N-1
         RX=FLOAT(J)
         CALL  SUB2(B(1,I),RX)
         B(1,I)=B(1,I)+C(I,J)
         C(J,I)=C(J+1,I+1)+A(J,I)
 30    CONTINUE
       DO 40 J=1,N-2
         A(J,I)=B(1,I)+D(I,J)
         CALL  SUB1(A(1,I),A(N,I+1))
         C(J,I)=C(J+1,I+1)+A(J,I+1)
 40    CONTINUE
 10   CONTINUE
      WRITE(6,99) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,99) ((B(I,J),I=1,10),J=1,10)
      WRITE(6,99) ((C(I,J),I=1,10),J=1,10)
      WRITE(6,99) ((D(I,J),I=1,10),J=1,10)
 99   FORMAT(8F10.3)
      STOP
      END
      SUBROUTINE  SUB1(X)
      X=X+1
      RETURN
      END
      SUBROUTINE  SUB2(X,Y)
      X=X+1.
      Y=Y+1.
      RETURN
      END
