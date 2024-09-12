      DIMENSION  A(10),B(10),C(10)
      DATA       A/10*1./,B/10*2./,C/10*4./
      DATA       N/10/
      DO 10 J=1,N
      DO 10 I=1,N
        A(I) = 1.
        IF(I.LE.N) THEN
          A(I) = A(I) + B(I) * C(I)
        ENDIF
   10 CONTINUE
      PRINT  *,A
      END
