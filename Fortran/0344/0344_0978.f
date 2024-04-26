      REAL*4    A(100),B(100),C(100)
      REAL*8    D(100),E(100),F(100)
      REAL*8    G(100),H(100),O(100)
      DATA A/100*0./,B/100*1./,C/100*2./
      DATA D/100*0./,E/100*1./,F/100*2./
      DATA G/100*0./,H/100*1./,O/100*2./,N/100/
      DO 10 I=1,N
         A(I) = B(I) + C(I)
         D(I) = E(I) / F(I)
         G(I) = H(I) * O(I)
   10 CONTINUE
      WRITE(6,100) A,B,C,D,E,F,G,H,O
  100 FORMAT(10F8.3)
      STOP
      END
