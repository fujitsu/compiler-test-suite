      INTEGER I401(10),I402(10),LIST(10),I403/9999/,I405(10)
      INTEGER I406(10)/10,9,8,7,6,5,4,3,2,1/
      EQUIVALENCE (I405(1),I406(1))
      REAL R401(10)/10*1/
      DATA I401/10*0/
      DATA LIST/10,9,8,7,6,5,4,3,2,1/
      DATA I402/9,8,10,5,4,6,2,1,3,7/
C
      DO 10 I=1,10
        IF (I.LE.10) THEN
          IF (I403.GT.I402(I)) THEN
            I401(LIST(I)) = SQRT(REAL(I))
            I403 = I402(I)
            R401(I) = SIN(REAL(I))
          ENDIF
        ENDIF
   10 CONTINUE
C
      WRITE(6,*) I401
      WRITE(6,*) I403
      WRITE(6,*) R401
C
      DO 20 I=1,10
        IF (I.LE.10) THEN
          I401(LIST(I)) = SQRT(REAL(I))
          IF (I403.GT.I402(I)) THEN
            I403 = I402(I)
          ENDIF
          R401(I) = SIN(REAL(I))
        ENDIF
   20 CONTINUE
C
      WRITE(6,*) I401
      WRITE(6,*) I403
      WRITE(6,*) R401
C
      DO 30 I=1,10
        IF (I.LE.10) THEN
          I401(LIST(I)) = I
          IF (I403.GT.I402(I)) THEN
            I403 = I402(I)
          ENDIF
          R401(I) = COS(REAL(I))
          I406(I) = SQRT(REAL(I))
        ENDIF
   30 CONTINUE
C
      WRITE(6,*) I401
      WRITE(6,*) I405
      WRITE(6,*) I403
      WRITE(6,*) R401
      STOP
      END
