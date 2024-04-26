      PROGRAM MAIN
      REAL    R401(1000),R402(1000),R403(1000),R404(1000)
      INTEGER LIST(1000)
      DATA R401,R402,R403,R404/1000*0,1000*2,1000*3,1000*0/
      M=2
      DO 10 I=1,1000,M
        IF (I.LE.800) THEN
          R401(I) = SIN(R402(I)) ** COS(R403(I)) - 2 ** I
        ELSE
          R401(I) = SQRT(R402(I)**R403(I)) ** (R402(I) * LOG(REAL(I)))
        ENDIF
        LIST(I) = I
        LIST(I+1) = I + 1
   10 CONTINUE
C
      
      WRITE(6,*)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*) (R401(I),I=1,1000,20)
C
      DO 20 I=1,10
        K = M + I
        DO 20 J=1,1000,M
          IF (J.LE.800) THEN
            R404(J) = R402(LIST(J)) ** 1 ** I
          ELSE
            R404(J) = R403(LIST(J)) + SIN(REAL(J)) ** 2
          ENDIF
   20 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*) K
      WRITE(6,*) (R404(I),I=1,1000,20)
C
      STOP
      END
