      REAL R401(10)/10*0/,R402(10)/1,2,2,3,3,3,4,4,4,4/
      REAL R403(10)/10*0/
      INTEGER LIST(10)/1,2,3,4,5,6,7,8,9,10/
C
      DO 10 I=1,10
        IF (I.LE.5) THEN
          R401(I) = SIN(R402(I)) + I
        ELSE
          R401(LIST(I)) = COS(R402(I)) * I
        ENDIF
   10 CONTINUE
      WRITE(6,1) R401
      WRITE(6,*)
C
      DO 20 I=1,10
        IF (I.GT.4) THEN
          R401(I) = SIN(R402(I) ** 2)
          R401(I) = COS(R401(LIST(I))) / 2
        ENDIF
   20 CONTINUE
      WRITE(6,1) R401
      WRITE(6,*)
C
      DO 30 I=1,10
        IF (I.LT.7) THEN
          LIST(I) = I
          R401(LIST(I)) = SQRT(R401(LIST(I))) + SQRT(REAL(I))
          R402(LIST(I)) = R401(LIST(I)) ** 2
        ENDIF
        IF (I.LT.7) THEN
          J = I
          R401(J) = SQRT(R401(J)) + SQRT(REAL(I))
          R402(J) = R401(J) ** 2
        ENDIF
   30 CONTINUE
      WRITE(6,1) R401
      WRITE(6,1) R402
      WRITE(6,*)
C
      DO 40 I=1,10
   40  J = I - 8
C
      DO 50 I=1,10
        IF (I.LT.7) THEN
          R403(1) = SIN(R401(I)) + R402(I)
        ELSE
          R403(LIST(J)) = COS(R401(I)) - R402(I)
        ENDIF
   50 CONTINUE
      WRITE(6,1) R403
C
    1 FORMAT(5E15.6)
      STOP
      END
