      REAL*4  A(5,5),B(5),D(5,5),E(5),G(5),H(5,5)
      REAL*8  C(5),F(5),K(5)
*
      DO 10 I=1,5
         DO 20 J=1,5
            A(I,J) = 1.0
   20    CONTINUE
         B(I) = FLOAT(I)
         B(I) = B(I) + 1.0
         C(I) = 1.0
   10 CONTINUE
      DO 30 I=1,5
         DO 40 J=1,5
   40       D(I,J) = 1.0
         E(I) = FLOAT(I)
         E(I) = E(I) + 1.0
   30    F(I) = 1.0
      DO 50 I=1,5
         G(I) = FLOAT(I)
         G(I) = G(I) + 1.0
         DO 60 J=1,5
            H(I,J) = 6.0
   60    CONTINUE
         K(I) = 1.0
   50 CONTINUE
      WRITE(6,*) A,B,C,D,E,F,G,H,K
      STOP
      END
