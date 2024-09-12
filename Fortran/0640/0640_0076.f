      REAL*4  A1(20,20),B1(20,20),C1(20,20)
      REAL*4  A2(20,20),B2(20,20),C2(20,20)
      EQUIVALENCE (A1(1,1),A2(1,1)),(C1(20,20),C2(20,20))
      DATA    A1,B1,C1/400*1.,400*2.,400*3./,NN/19/
      DATA    B2/400*5./

      DO 10 I=2,NN
       DO 20 J=2,NN
         A1(I,J)=B1(I,J)+C1(I,J)-FLOAT(J)
         CALL  SUB2(A2(I,J),C2(I,J))
         B2(I,J)=B1(I,J)+C2(I,J)
 20    CONTINUE
       DO 30 J=2,NN
         C2(I,1)=C2(I,1)+A1(I,J)
         CALL  SUB1(C1(I-1,J))
         B1(I,J)=A2(I,J)*2.-B2(I,J)
 30    CONTINUE
 10   CONTINUE
      WRITE(6,*) ((A1(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B1(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B2(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((C1(I,J),I=1,10),J=1,10)
      DO 40 I=2,NN
       DO 50 J=2,NN
         A1(I,J)=B1(I,J)+C1(I,J)-FLOAT(J)
         CALL  SUB2(A2(I,J),C2(I,J))
         B2(I,J)=B1(I,J)+C2(I,J)
 50    CONTINUE
       DO 60 J=2,NN
         C2(I,1)=C2(I,1)+A1(I,J)
         CALL  SUB1(C1(I-1,J))
         B1(I,J)=A2(I,J)*2.-B2(I,J)
 60    CONTINUE
 40   CONTINUE
      WRITE(6,*) ((A1(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B1(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B2(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((C1(I,J),I=1,10),J=1,10)
      STOP
      END
      SUBROUTINE  SUB1(X)
      X=X+(1.,2.)
      RETURN
      END
      SUBROUTINE  SUB2(X,Y)
      X=X+1.
      Y=Y+1.
      RETURN
      END
