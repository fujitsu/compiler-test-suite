      INTEGER A(100),B(100),C(100),D(100)
      INTEGER E(100),F(100),G(100),H(100)
      DATA N/100/,B/100*2/,C/100*2/,E/100*2/,F/100*2/
      DO 10 I=1,N
         A(I) = B(I) / C(I)
         D(I) = MOD(A(I),B(I))
         G(I) = E(I) / F(I)
         H(I) = MOD(E(I),F(I))
   10 CONTINUE
      WRITE(6,100) (A(I)+B(I)+C(I)+D(I),I=1,N)
      WRITE(6,100) (E(I)+F(I)+G(I)+H(I),I=1,N)
  100 FORMAT(10I4)
      STOP
      END
