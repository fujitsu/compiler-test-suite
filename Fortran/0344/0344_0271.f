      INTEGER I401(10)/10*0/,I402(10)/10*2/,I404
      INTEGER I403(10)/1,2,3,4,5,10,9,8,7,6/
      INTEGER I405(10,10)/100*2/
C
      J = 1
      DO 10 I=1,10
        IF (I.LE.6) THEN
          I401(I) = I402(I) + I403(J)
          J = J + 1
        ENDIF
   10 CONTINUE
      WRITE(6,*) I401
C
      J = 1
      DO 20 I=1,10
        IF (I.LE.7) THEN
          I402(J) = I401(I) + I403(I)
          J = J + 1
        ENDIF
   20 CONTINUE
      WRITE(6,*) I402
C
      I404 = 0
      DO 30 I=1,10
        IF (I.LE.8) THEN
          I404 = I404 + I403(I)
        ENDIF
   30 CONTINUE
      WRITE(6,*) I404
C
      I404 = 0
      DO 40 I=1,10
        DO 40 J=1,10
        IF (I.LE.5) THEN
          IF (J.LE.5) THEN
            I404 = I404 + I405(I,J) * I405(J,I)
          ENDIF
        ENDIF
   40 CONTINUE
      WRITE(6,*) I404
C
      STOP
      END
