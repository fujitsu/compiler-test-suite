      REAL*8  A1(20),B1(20),C1(20)
      REAL*8  A2(20,20),B2(20,20),C2(20,20)
      REAL*8  A3(20,20,20),B3(20,20,20),C3(20,20,20)
      INTEGER*4  L(20)
      DATA  A1,B1,C1/20*1.D0,20*2.D0,20*3.D0/
      DATA  A2,B2,C2/400*2.1D0,400*1.2D0,400*4.D0/
      DATA  A3,B3,C3/8000*0.2D0,8000*0.1D0,8000*0.3D0/
      DATA  N1,N2,N3/1,2,3/,NN/16/
      DO 10 I=1,20
 10     L(I)=21-I

      DO 30 K=2,NN
       A1(K) = B1(K)+C1(K)
       DO 30 J=2,NN
        A2(K,J)= B2(K,J-1)+A1(L(J))
        DO 20 I=2,NN
          A3(I,J,K)= A2(L(K),J+1)+C3(I,J,L(K))*B3(I,J,K)
 20     CONTINUE
        B2(K,J)= A3(N1+N2-N3+J,J-1,K)-C2(L(K),L(J))
 30   CONTINUE

      WRITE(6,*) ' A1= ',A1
      WRITE(6,*) ' A2= ',((A2(I,J),I=1,15),J=1,15)
      WRITE(6,*) ' A3= ',(((A3(I,J,K),I=1,5),J=1,5),K=1,5)
      STOP
      END
