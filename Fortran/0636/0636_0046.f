      REAL*4  A1(20,20),B1(20,20),C1(20,20)
      REAL*4  A2(20,20),B2(20,20),C2(20,20)
      DATA  A1,B1,C1/400*1.,400*2.,400*3./,NN/18/
      DATA  A2,B2,C2/400*2.,400*1.,400*4./
      DO 10 I=2,NN
        DO 20 J=2,NN
          A1(I,J)=A1(I,J)+B1(I,J)*C1(I,J)
 20     CONTINUE
        DO 30 J=2,NN
         DO 30 K=2,NN
           A2(K,I)=B2(K,I)+C2(K,J)
 30     CONTINUE
        DO 10 J=2,NN
          B1(I,J)=A1(I,J)-C1(I,J)
 10   CONTINUE
      DO 40 I=2,NN
        DO 50 J=2,NN
          C1(I,J)=A1(I,J)+B1(I,J)*C1(I,J)
 50     CONTINUE
        DO 60 J=2,NN
          C2(NN,J)=B2(NN,J)*A2(I,J)-C2(I,NN)
 60     CONTINUE
        DO 40 J=2,NN
          A1(I,J)=B1(I,J)-C1(I,J)
 40   CONTINUE
      WRITE(6,*) ' A1=',((A1(I1,I2),I1=1,10),I2=1,10)
      WRITE(6,*) ' B1=',((A1(I1,I2),I1=1,10),I2=1,10)
      WRITE(6,*) ' A2=',((A1(I1,I2),I1=1,10),I2=1,10)
      WRITE(6,*) ' C2=',((A1(I1,I2),I1=1,10),I2=1,10)
      STOP
      END
