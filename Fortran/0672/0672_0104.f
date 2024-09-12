      CALL SET(I1,I2,I3,ICOND,REAL)

      DO 10 I=I1,I2,I3
      A=FLOAT(I)*REAL
      IF(ICOND.NE.0) GO TO 10
      B=FLOAT(I)*REAL
      A=FLOAT(I)
      WRITE(6,100) A,B
   10 CONTINUE
      STOP
  100 FORMAT(1X,2E20.7)
      END
      SUBROUTINE SET(I1,I2,I3,ICOND,REAL)
      I1=1
      I2=10
      I3=2
      ICOND=0
      REAL=3.
      RETURN
      END
