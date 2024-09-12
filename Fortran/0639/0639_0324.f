      DIMENSION  A(10,10),B(10,10),G(10)
      DATA       A/100*1./,B/100*2./
      DO 10 J=1,10
      DO 10 I=1,10
        G(I) = A(I,J)
        A(I,J) = G(I) * 2.
        G(I) = B(I,J)
        B(I,J) = G(I) + 2.
        G(I) = G(I) * A(I,J) + G(I) * B(I,J)
        A(I,J) = G(I)
        G(I) = G(I) * G(I)
   10 CONTINUE
      PRINT  *,G,A,B
      END
