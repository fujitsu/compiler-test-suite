      REAL*8  A1(20),B1(20),C1(20)
      REAL*8  A2(20,20),B2(20,20),C2(20,20)
      REAL*8  A3(20,20,20),B3(20,20,20),C3(20,20,20)
      DATA  A1,B1,C1/20*1.D0,20*2.D0,20*3.D0/
      DATA  A2,B2,C2/400*2.1D0,400*1.2D0,400*4.D0/
      DATA  A3,B3,C3/8000*0.2D0,8000*0.1D0,8000*0.3D0/
      DATA  NN/16/

      DO 40 K=1,20
       A1(K) = B1(K)+C1(K)
       DO 30 J=1,20
        A2(K,J)= B2(K,J)*C2(K,J)
        DO 20 I=2,NN
          B3(K,J,I)=A1(K)*2.D0-A3(K,J,I+1)
          A3(K,J,I)= A2(K,I-1)+C3(I,J,K)*B3(K,J,I)
 20     CONTINUE
        B2(K,J)= A3(K,J,2)-C2(K,J)
 30    CONTINUE
 40   CONTINUE

      WRITE(6,1000) ' A1= ',A1
      WRITE(6,1000) ' A2= ',((A2(I,J),I=1,15),J=1,15)
      WRITE(6,1000) ' A3= ',(((A3(I,J,K),I=1,10),J=1,10),K=1,10)
 1000 FORMAT(' ',A,(3G24.15))
      STOP
      END
