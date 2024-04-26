      PROGRAM MAIN
      INTEGER A(100),B(100),C(100),D(100)
      DATA A,B/200*2/,M/100000/,J/1/
      DO 10 I=1,100
        C(I) = I
   10   D(I) = I
C
      
C
      DO 20 I=1,100
        IF (B(I).EQ.D(I)-I+2) THEN
          IF (A(C(I)).LT.M) THEN
            M = A(C(I))
          ENDIF
        ENDIF
   20 CONTINUE
      WRITE(6,*)
      WRITE(6,1) M
C
      DO 30 I=1,100
        IF (I-D(C(I))) 31,32,31
   32   IF (A(I).LE.C(I)) THEN
          B(I) = A(C(J)) + SIN(REAL(I))
          J = J + 1
        ENDIF
   31 CONTINUE
   30 CONTINUE
      WRITE(6,*)
      WRITE(6,1) B
C
      J = 1
      DO 40 I=1,100
        IF (A(I).NE.D(I)) THEN
          C(J) = B(I) * COS(REAL(I))
          J = J + 1
        ENDIF
   40 CONTINUE
      WRITE(6,*)
      WRITE(6,1) C
C
    1 FORMAT(15I5)
      STOP
      END
