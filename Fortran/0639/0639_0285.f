      COMMON     A(10),B(10),C(10),D(10),L1(10),L2(10)
      DATA       S/Z'00000001'/
      LOGICAL    L1,L2

      DO 10 I=1,10
        IF(MOD(I,2).EQ.0) THEN
          L1(I) = .TRUE.
          L2(I) = .TRUE.
          A(I)  = I
          B(I)  = 2*I
          C(I)  = 3*I
          D(I)  = 4*I
        ELSE
          L1(I) = .FALSE.
          L2(I) = .FALSE.
          A(I)  = S
          B(I)  = S
          C(I)  = S
          D(I)  = S
        ENDIF
   10 CONTINUE
      CALL  SUB
      END
      SUBROUTINE  SUB
      COMMON     A(10),B(10),C(10),D(10),L1(10),L2(10)
      DATA       SS/0.0/
      LOGICAL    L1,L2


      DO 20 I=1,10
        IF(L1(I)) THEN
          V1   = B(I)
          V2   = C(I)
          V3   = D(I)
          A(I) = V1 * V2 + V3
        ELSE
          A(I) = I
        ENDIF
        V1 = 1.
        V2 = 2.
        V3 = 3.
        IF(SS.EQ.1.) GO TO 20
        IF(L2(I)) THEN
          V1   = B(I)
          V2   = C(I)
          V3   = D(I)
          A(I) = V1 * V3 + V2
        ELSE
          A(I) = V1 + V2 + V3
        ENDIF
   20 CONTINUE



      PRINT  *,A
      RETURN
      END
