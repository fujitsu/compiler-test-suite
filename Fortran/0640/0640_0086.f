      REAL*8  A1(20),B1(20),C1(20)
      REAL*8  A2(20,20),B2(20,20),C2(20,20)
      REAL*8  A3(20,20,20),B3(20,20,20),C3(20,20,20)
      DATA  A1,B1,C1/20*1.D0,20*2.D0,20*3.D0/
      DATA  A2,B2,C2/400*2.1D0,400*1.2D0,400*4.D0/
      DATA  A3,B3,C3/8000*0.2D0,8000*0.1D0,8000*0.3D0/

      DO 40 K=1,19
       A1(K) = B1(K)+DSQRT(C1(K))

       DO 30 J=2,20
        A2(K,J)= B2(K,J)*A1(K)
        DO 20 I=2,18
          B3(K,J,I)=A3(K+1,J-1,I+1)*2.D0-A3(K,J,I+1)+B2(K+1,J)
          A3(K,J,I)= A2(K,J-1)+C3(K,J,I)*B3(K+1,J,I)
 20     CONTINUE
        B2(K,J)= A3(K,J,2)-C2(K,J)
 30    CONTINUE
 40   CONTINUE

      WRITE(6,1000) A1
      WRITE(6,1000) ((A2(I,J),I=1,15),J=1,15)
      WRITE(6,1000) (((A3(I,J,K),I=1,10),J=1,10),K=1,10)
 1000 FORMAT(5(F10.5))
      STOP
      END
