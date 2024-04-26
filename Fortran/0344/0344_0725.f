      REAL*8 X/1.0/
      REAL*4 S(10)/10*0.0/
      DO 10 J=1,10
        DO 10 I=1,10000
          IF(I.GT.50) THEN
            S(1)=S(1)+X
          ENDIF
  10  CONTINUE
      WRITE(6,*) S(1)
C
      DO 20 J=1,10
        DO 20 I=1,10000
          IF(I.GT.50) THEN
            S(2)=S(2)+X
          ENDIF
  20  CONTINUE
      WRITE(6,*) S(2),I,J
      STOP
      END
