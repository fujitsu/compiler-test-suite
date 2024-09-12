      DIMENSION  A(10,10),B(10,10),G1(10),G2(10)
      LOGICAL    L1(10,10),L2(10,10)
      DATA       A/100*1./,B/100*2./

      DO 90 I=1,10
      DO 90 J=1,10
      L1(I,J) = MOD(I+J,2) .EQ. 0
   90 L2(I,J) = .NOT. L1(I,J)

      DO 10 J=1,10
      DO 10 I=1,10
        G1(I) = A(I,J)
        A(I,J) = G1(I) * 2.
        G2(I) = A(I,J)
        IF(L1(I,J)) THEN
          G1(I) = B(I,J)
        ELSE
          G1(I) = G1(I) * A(I,J) + G2(I) * B(I,J)
        ENDIF
        B(I,J) = G1(I) + 2.
        G1(I) = G1(I) * G1(I)
        G2(I) = G2(I) * G2(I)
        IF(L2(I,J)) THEN
          G1(I) = B(I,J) - 2
        ELSE
          G2(I) = G1(I) + A(I,J) + G2(I) * B(I,J)
        ENDIF
        A(I,J) = G1(I)
        B(I,J) = G2(I)
   10 CONTINUE
      PRINT  *,G1,G2,A,B
      END
