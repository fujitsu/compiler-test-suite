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

      IS1 = 999
      IS2 = 0
      IX1 = 0
      IX2 = 0
      DO 10 I=1,10
        IF(IS1.GT.I) THEN
          IS1 = I
          IX1 = I
        ENDIF

        IF(L(I)) THEN
          IS2 = MAX(IS2,I)
        ENDIF
   10 CONTINUE
      PRINT  *,IS1,IS2,IX1,IX2

      IS1 = 9999
      IS2 = 0
      IX1 = 0
      IX2 = 0
      DO 20 I=1,2048
        IF(IS1.GT.I) THEN
          IS1 = I
          IX1 = I
        ENDIF

        IF(L(I)) THEN
          IS2 = MAX(IS2,I)
        ENDIF
   20 CONTINUE
      PRINT  *,IS1,IS2,IX1,IX2

      IS1 = 9999
      IS2 = 0
      IX1 = 0
      IX2 = 0
      DO 30 I=1,N,500
        IF(IS1.GT.I) THEN
          IS1 = I
          IX1 = I
        ENDIF

        IF(L(I)) THEN
          IS2 = MAX(IS2,I)
        ENDIF
   30 CONTINUE

      PRINT  *,IS1,IS2,IX1,IX2

      RS1 = 9999
      CS1 = 0
      RX1 = 0
      DO 40 J=1,10
      DO 40 I=1,N,256
        IF(RS1.GT.R1(I)) THEN
          RS1 = R1(I)
          RX1 = I
        ENDIF

        IF(L(I)) THEN
          CS1 = MAX(CS1,C1(I))
        ENDIF
   40 CONTINUE
      PRINT  *,RS1,CS1,RX1
      RETURN
      END
