      REAL   A(10),B(10),C(10),D(10),E(10),F(10),G(10),H(10),O(10)
      DATA   A,B,C,D,E,F,G,H,O/90*2./
      REAL*8 A8(10),B8(10,10),C8(10,10),D8(10),E8(10),F8(10)
      DATA   A8,B8,C8,D8,E8,F8/240*4.D0/

      DO 10 I=1,10
        A(I) = B(I) + C(I)
        D(I) = E(I) * F(I)
        G(I) = H(I) / O(I)
   10 CONTINUE
      PRINT  *,A,D,G

      DO 20 J=1,5
      DO 20 I=1,10
        A8(I) = B8(J,I) + C8(J,I)
        D8(I) = E8(I)   * F8(I)
   20 CONTINUE
      PRINT  *,A8,D8

      X  = 0.
      Y  = 0.
      IX = 1
      DO 30 I=1,10
        X = X + A(I)
        IF(Y.LT.B(I)) THEN
          Y  = B(I)
          IX = I
        ENDIF
   30 CONTINUE
      PRINT  *,X,Y,IX
      END
