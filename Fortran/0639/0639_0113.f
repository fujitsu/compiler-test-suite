      INTEGER  I1(2048),I2(2048)
      REAL     R1(2048),R2(2048)
      REAL*8   C1(2048),C2(2048)
      LOGICAL  L(2048)

      DO 10 I=1,2048
        I1(I) = I
        I2(I) = 2048 - I
        R1(I) = 2048. - FLOAT(I)
        R2(I) = I
        C1(I) = I
        C2(I) = I
        L(I) = MOD(I,2) .EQ. 0
   10 CONTINUE
      CALL  SUB(I1,I2,R1,R2,C1,C2,L,2048)
      END

      SUBROUTINE  SUB(I1,I2,R1,R2,C1,C2,L,N)
      INTEGER    I1(N),I2(N),IX1,IX2,RX1,RX2,CX1,CX2
      REAL       R1(N),R2(N),RS1,RS2
      REAL*8     C1(N),C2(N),CS1,CS2
      LOGICAL  L(N)

      IS1 = 99999
      IS2 = 99999
      IX1 = 0
      IX2 = 0
      RS1 = 99999.
      RS2 = 99999.
      RX1 = 0
      RX2 = 0
      CS1 = 99999.D0
      CS2 = 99999.D0
      CX1 = 0
      CX2 = 0
      DO 10 I=1,10
        IF(IS1.GT.I1(I)) THEN
          IS1 = I1(I)
          IX1 = I
        ENDIF

        IF(L(I)) THEN
          IS2 = MIN(IS2,I2(I))
        ENDIF

        IF(RS1.GT.R1(I)) THEN
          RS1 = R1(I)
          RX1 = I
        ENDIF

        IF(L(I)) THEN
          RS2 = MIN(RS2,R2(I))
        ENDIF

        IF(CS1.GT.C1(I)) THEN
          CS1 = C1(I)
          CX1 = I
        ENDIF

        IF(L(I)) THEN
          CS2 = MIN(CS2,C2(I))
        ENDIF
   10 CONTINUE
      PRINT  *,IS1,IS2,IX1,IX2,RS1,RS2,RX1,RX2,CS1,CS2,CX1,CX2

      IS1 = 0
      IS2 = 0
      IX1 = 0
      IX2 = 0
      RS1 = 0.
      RS2 = 0.
      RX1 = 0
      RX2 = 0
      CS1 = 0.D0
      CS2 = 0.D0
      CX1 = 0
      CX2 = 0
      DO 20 I=1,2048
        IF(IS1.LT.I1(I)) THEN
          IS1 = I1(I)
          IX1 = I
        ENDIF

        IF(L(I)) THEN
          IS2 = MAX(IS2,I2(I))
        ENDIF

        IF(RS1.LT.R1(I)) THEN
          RS1 = R1(I)
          RX1 = I
        ENDIF

        IF(L(I)) THEN
          RS2 = MAX(RS2,R2(I))
        ENDIF

        IF(CS1.LT.C1(I)) THEN
          CS1 = C1(I)
          CX1 = I
        ENDIF

        IF(L(I)) THEN
          CS2 = MAX(CS2,C2(I))
        ENDIF
   20 CONTINUE
      PRINT  *,IS1,IS2,IX1,IX2,RS1,RS2,RX1,RX2,CS1,CS2,CX1,CX2

      IS1 = 99999
      IS2 = 0
      IX1 = 0
      IX2 = 0
      RS1 = 99999.
      RS2 = 999999.
      RX1 = 0
      RX2 = 0
      CS1 = 99999.D0
      CS2 = 0.D0
      CX1 = 0
      CX2 = 0
      DO 30 I=1,N,100
        IF(IS1.GT.I1(I)) THEN
          IS1 = I1(I)
          IX1 = I
        ENDIF

        IF(L(I)) THEN
          IS2 = MAX(IS2,I2(I))
        ENDIF

        IF(RS1.GT.R1(I)) THEN
          RS1 = R1(I)
          RX1 = I
        ENDIF

        IF(L(I)) THEN
          RS2 = MIN(RS2,R2(I))
        ENDIF

        IF(CS1.GT.C1(I)) THEN
          CS1 = C1(I)
          CX1 = I
        ENDIF

        IF(L(I)) THEN
          CS2 = MAX(CS2,C2(I))
        ENDIF
   30 CONTINUE
      PRINT  *,IS1,IS2,IX1,IX2,RS1,RS2,RX1,RX2,CS1,CS2,CX1,CX2
      RETURN
      END
