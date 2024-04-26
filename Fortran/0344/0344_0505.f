      REAL*4 A(10,10,10),B(10,10,10),C(10,10,10),D(10)
      DATA A/1000*0/,B/1000*1/,C/1000*2/,D/10*0/
      DO 10 I=1,10
         DO 20 J=1,10
            DO 30 K=1,10
               A(I,J,K) = B(I,J,K) + C(I,J,K)
   30       CONTINUE
   20    CONTINUE
      D(I) = D(I) + A(I,J-1,K-1)
   10 CONTINUE
      WRITE(6,99) (((A(I,J,K),I=1,10,2),J=1,10,2),K=1,10)
      WRITE(6,99) (D(L),L=1,10)
   99 FORMAT(10F5.1)
      STOP
      END
