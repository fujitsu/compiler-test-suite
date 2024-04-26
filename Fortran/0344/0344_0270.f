      INTEGER  I401(10),IMX/0/,IMXIDX/1/,IMN/9999/,IMNIDX/1/
      DATA I401/5,2,6,7,10,1,9,3,4,8/
C
      DO 10 I=1,10
        IF (I.LE.7) THEN
          IF (IMX.LT.I401(I)) THEN
            IMX = I401(I)
          ENDIF
        ENDIF
   10 CONTINUE
      WRITE(6,*) IMX
C
      DO 20 I=1,10
        IF (I.LE.7) THEN
        IF (I401(IMXIDX).LT.I401(I)) THEN
          IMXIDX = I
        ENDIF
        ENDIF
   20 CONTINUE
      WRITE(6,*) IMXIDX
C
      DO 30 I=1,10
        IF (I.LE.7) THEN
        IF (IMN.GT.I401(I)) THEN
          IMN = I401(I)
        ENDIF
        ENDIF
   30 CONTINUE
      WRITE(6,*) IMN
C
      DO 40 I=1,10
        IF (I.LE.7) THEN
        IF (I401(IMNIDX).GT.I401(I)) THEN
          IMNIDX = I
        ENDIF
        ENDIF
   40 CONTINUE
      WRITE(6,*) IMNIDX
C
      STOP
      END
