      SUBROUTINE SUB(RB)
      INTEGER *4  I2,I1
      REAL    *4  RB(10,10)
      DO 20 I2=1,10
        DO 10 I1=1,10
          IF(I1.EQ.I2) THEN
            RB(I1,I2)=I1
          ELSE
            RB(I1,I2)=I2
          ENDIF
   10   CONTINUE
   20 CONTINUE
      IF (SUM(RB) .eq. 550.0)  THEN
        write(6,*) "OK"
      ELSE
        write(6,*) "NG"
      ENDIF
      RETURN
      END SUBROUTINE

      PROGRAM MAIN
      INTEGER *4  I2,I1
      REAL    *4  RB(10,10)
      DO 20 I2=1,10
        DO 10 I1=1,10
          RB(I1,I2) = 0
   10   CONTINUE
   20 CONTINUE
      CALL SUB(RB)
      END
        
