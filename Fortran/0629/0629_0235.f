      INTEGER RNAN10(120,120),RNAN13(1,1)
      RNAN10=0
      RNAN13=0

      DO 120 I1=1,1                                                          
        DO 120 I2=1,120
          RNAN10(I2,I2) = 2                                           
          RNAN13(I1,I1) = 1
  120 CONTINUE

      IF(RNAN10(120,120).EQ.2) THEN
        PRINT*,"* OK *"
      ELSE
        PRINT*,"* NG * ",RNAN10(120,120)
      ENDIF
      END
