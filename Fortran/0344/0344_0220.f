      REAL*8  A1(20),B1(20),C1(20)
      REAL*8  A2(20,20),B2(20,20),C2(20,20)
      REAL*8  A3(20,20,20),B3(20,20,20),C3(20,20,20)
      INTEGER*4  L(20)
      DATA  A1,B1,C1/20*1.D0,20*2.D0,20*3.D0/
      DATA  A2,B2,C2/400*2.1D0,400*1.2D0,400*4.D0/
      DATA  A3,B3,C3/8000*0.2D0,8000*0.1D0,8000*0.3D0/
      DO 10 I=1,20
        NN = I-4
 10     L(I)=21-I
C
      DO 50 K=2,NN
       B1(L(K))=FLOAT(K)
       DO 60 J=2,NN
        C2(K,J)=B2(K,J)*2.0+B1(J)
        DO 70 I=2,NN
          C3(K,J,I)=A3(I,J,K)+B3(K,I,J)*C2(J,K)
 70     CONTINUE
        A3(J,2,K)=A2(K,J)-C2(J,K)*A1(K)
 60    CONTINUE
       A1(K) = B1(K)+C1(K)
 50   CONTINUE
C
      WRITE(6,*) ' A1= '
      WRITE(6,1) A1
      WRITE(6,*) ' A2= '
      WRITE(6,1) ((A2(I,J),I=1,10),J=1,10)
      WRITE(6,*) ' A3= '
      WRITE(6,1) (((A3(I,J,K),I=1,10),J=1,5),K=1,5)
      WRITE(6,*) ' C3= '
      WRITE(6,2) (((C3(I,J,K),I=1,10),J=1,5),K=1,5)
  1   FORMAT(10F7.3)
  2   FORMAT(4(1X,'(',F7.3,',',F7.3,')'))
      STOP
      END
