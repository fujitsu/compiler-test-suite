      DIMENSION  A(5),B(10),C(10)
      DATA       A/5*1./,B/10*2./,C/10*4./
      DATA       N1/5/,N2/3/
      DO 10 I=1,10
        IF(I.LE.N1) THEN
          A(I) = 5.
          B(I) = A(I) + C(I)
        ENDIF
        IF(I.LE.N2) THEN
          C(I) = 5.
          A(I) = C(I) + B(I)
        ENDIF
   10 CONTINUE
      PRINT  *,A,B,C
      END