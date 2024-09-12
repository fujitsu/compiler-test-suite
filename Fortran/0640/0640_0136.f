      PROGRAM MAIN

      REAL    R10(500)
      REAL*8  D10(500)
      INTEGER I10(500),LIST(500)
      LOGICAL L10(500)/500*.FALSE./
      N = 500
      CALL INIT(N,L10,I10,R10,D10,LIST)
      CALL SUB1(N,L10,I10,R10,D10,LIST)
      CALL SUB2(N,L10,I10,R10,D10,LIST)
      CALL SUB3(N,L10,I10,R10,D10,LIST)
      WRITE(6,*) ' L10 = ',L10
      WRITE(6,*) ' I10 = ',(I10(K),K=100,200)
      WRITE(6,*) ' R10 = ',(R10(K),K=300,400)
      WRITE(6,*) ' D10 = ',(D10(K),K=400,500)
      STOP
      END
      SUBROUTINE INIT(N,L10,I10,R10,D10,LIST)
      LOGICAL L10(N)
      INTEGER I10(N),LIST(N)
      REAL    R10(N)
      REAL*8  D10(N)
      I1 = 0
      I2 = 1
      DO 10 I=1,N/2
        LIST(I) = I
        LIST(I+N/2) = I + N/2
        L10(I) = .TRUE.
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
      SUBROUTINE SUB1(N,L10,I10,R10,D10,LIST)
      LOGICAL L10(N)
      INTEGER I10(N),LIST(N)
      REAL    R10(N)
      REAL*8  D10(N)
      J = 0
      L = 1
      DO 10 I=1,N
        IF(L10(I)) THEN
          D10(L) = D10(I)
          R10(L) = R10(I) + FLOAT(I10(I))
          L = L + 1
          J = J + 1
          I10(J) = I10(LIST(I))
        ENDIF
  10  CONTINUE
      RETURN
      END
      SUBROUTINE SUB2(N,L10,I10,R10,D10,LIST)
      LOGICAL L10(N)
      INTEGER I10(N),LIST(N)
      REAL    R10(N)
      REAL*8  D10(N)
      DATA M/100/
      J = 50
      S1 = 0
      DO 10 I=1,N-450
        IF(L10(I)) THEN
          J = J + 1
          D10(J) = D10(I+M) + D10(I+100)
          I10(J) = R10(I) + D10(I)
          S1 = S1 + R10(J) + I10(J)
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' S1 = ',S1
      RETURN
      END
      SUBROUTINE SUB3(N,L10,I10,R10,D10,LIST)
      LOGICAL L10(N)
      INTEGER I10(N),LIST(N)
      REAL    R10(N)
      REAL*8  D10(N)
      REAL*8 QS
      J = 1
      K = 0
      S1 = 0
      QS = 0
      DO 10 I=1,N
        IF(L10(I)) THEN
          K = K + 1
          D10(J) = D10(LIST(I)) + D10(I)
          I10(J) = R10(K) + D10(I)
          S1 = MAX(S1,R10(K))
          QS = QS + I
          J = J + 1
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' S1 = ',S1
      WRITE(6,*) ' J  = ',J
      WRITE(6,*) ' K  = ',K
      RETURN
      END
