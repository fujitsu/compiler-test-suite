      DIMENSION  A(200),B(200),C(200),D(200),E(200),F(200),G(200)
      DIMENSION  X(200),Y(200),P(200),Q(200)
      DATA       A/200*1./,B/200*2./,C/200*4./
      DATA       D/200*1./,E/200*2./,F/200*4./,G/200*2./
      DATA       N/5/,L/200/
      DO 10 I=1,L
        IF(I.LE.N) THEN
          V1   = B(I) + C(I)
          X(I) = V1
          V2   = F(I) + G(I)
          Y(I) = V2
          V3   = B(I) * C(I)
          P(I) = V3
          V4   = E(I) * F(I)
          Q(I) = V4
          A(I) = (V1+D(I)+E(I)+V2) * (V3*D(I)*V4*G(I))
        ENDIF
   10 CONTINUE
      PRINT  *,A,(X(I),Y(I),P(I),Q(I),I=1,N)
      END
