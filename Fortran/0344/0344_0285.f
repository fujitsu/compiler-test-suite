      PROGRAM MAIN
      REAL    R401(50),R402(50),R403(50),R404/1/
      COMPLEX C801(50)/50*1/
      DATA R401,R402,R403/50*1,50*2,50*3/
C
      DO 10 I=1,50
        R401(I) = SIN(R402(I)+R404-I)
        IF (I.LE.10) THEN
          R401(I) = CCOS(C801(I)*I) - SQRT(R403(I))
        ELSE
          IF (I.GT.40) THEN
            R401(I) = CSIN(C801(I)*COS(R403(I))) - LOG(ABS(R401(I)))
          ENDIF
        ENDIF
   10 CONTINUE
C
      
      WRITE(6,1) R401
    1 FORMAT(5E15.6)
      STOP
      END
