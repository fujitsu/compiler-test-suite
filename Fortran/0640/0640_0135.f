      PROGRAM MAIN

      REAL    R10(500)
      REAL*8  D10(500)
      INTEGER I10(500)
      LOGICAL L10(500)
      N = 500
      L10 = .false.
      CALL INIT(N,L10,I10,R10,D10)
      CALL SUB1(N,L10,I10,R10,D10)
      CALL SUB2(N,L10,I10,R10,D10)
      CALL SUB3(N,L10,I10,R10,D10)
      WRITE(6,*) ' L10 = ',L10
      WRITE(6,*) ' I10 = ',(I10(K),K=100,200)
      WRITE(6,*) ' R10 = ',(R10(K),K=300,400)
      WRITE(6,*) ' D10 = ',(D10(K),K=400,500)
      STOP
      END
      SUBROUTINE INIT(N,L10,I10,R10,D10)
      LOGICAL L10(N)
      INTEGER I10(N)
      REAL    R10(N)
      REAL*8  D10(N)
      I1 = 0
      I2 = 1
      DO 10 I=1,N/2
        L10(I) = .TRUE.
        L10(I+N/2) = .false.
        IF(L10(I)) THEN
          I1 = I1 + 2
          I10(I1) = I
          R10(I1) = FLOAT(I)
          D10(I1) = DFLOAT(I)
          I10(I2) = -I
          R10(I2) = FLOAT(-I)
          D10(I2) = DFLOAT(-I)
          L10(I) = 0.EQ.MOD(I,2)
          I2 = I2 + 2
        ENDIF
  10  CONTINUE
      RETURN
      END
      SUBROUTINE SUB1(N,L10,I10,R10,D10)
      LOGICAL L10(N),L1S
      INTEGER I10(N)
      REAL    R10(N)
      REAL*8  D10(N)
      J = 0
      DO 10 I=1,N
        IF(L10(I)) THEN
          J = J + 2
          L1S = D10(I) .NE. 3.0D0
          D10(I) = DBLE(R10(J))
          IF(L1S) THEN
            I10(J) = INT(D10(I))
          ENDIF
        ENDIF
  10  CONTINUE
      RETURN
      END
      SUBROUTINE SUB2(N,L10,I10,R10,D10)
      DATA M/0/
      LOGICAL L10(N)
      INTEGER I10(N)
      REAL    R10(N)
      REAL*8  D10(N)
      J = 0
      S1 = 0
      DO 10 I=1,N
        IF(L10(I)) THEN
          J = J + 1
          D10(I) = D10(I+M) + D10(J)
          I10(I) = R10(J) + D10(I)
          S1 = S1 + R10(J) + D10(I)
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' S1 = ',S1
      RETURN
      END
      SUBROUTINE SUB3(N,L10,I10,R10,D10)
      DATA M/0/
      LOGICAL L10(N)
      INTEGER I10(N)
      REAL    R10(N)
      REAL*8  D10(N)
      REAL*8  QS
      J = 1
      K = 0
      S1 = 0
      QS = 0
      DO 10 I=1,N
        IF(L10(I)) THEN
          K = K + 1
          D10(J) = D10(I+M) + D10(I)
          I10(J) = R10(I) + D10(I)
          S1 = MAX(S1,R10(K))
          QS = QS + I
          J = J + 1
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' S1 = ',S1
      RETURN
      END
