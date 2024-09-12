      COMMON     A(10),B(10),C(10),D(10),L1(10),L2(10)
      LOGICAL    L1,L2
      DATA       S/Z'00000001'/

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
      SUBROUTINE SUB
      DATA       SS/0.0/
      COMMON     A(10),B(10),C(10),D(10),L1(10),L2(10)
      LOGICAL    L1,L2


      DO 20 I=1,10
        IF(L1(I)) THEN
          A(I) = B(I) * C(I) + D(I)
        ELSE
          A(I) = I
        ENDIF
        IF(SS.EQ.1.) GO TO 20
        IF(L2(I)) THEN
          A(I) = C(I) * D(I) + B(I)
        ELSE
          A(I) = I
        ENDIF
   20 CONTINUE



      PRINT  *,A
      RETURN
      END
