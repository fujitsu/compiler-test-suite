      DIMENSION  A(5),B(10),C(10)
      DATA       A/5*1./,B/10*2./,C/10*4./
      DATA       N/5/
      DO 10 I=1,10
        IF(I.LE.N) THEN
          A(I) = A(I) + B(I) * C(I)
        ENDIF
   10 CONTINUE
      PRINT  *,A
      END
