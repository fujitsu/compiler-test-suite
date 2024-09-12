      PROGRAM MAIN
      REAL    R10(500),R11(500)
      REAL*8  D10(500)
      INTEGER I10(500),LIST(500)
      LOGICAL L10(500)

      L10 = .FALSE.
      K=0
      N = 500
      CALL INIT(N,L10,I10,R10,R11,D10,LIST)
      CALL SUB1(N,L10,I10,R10,R11,D10,LIST)
      CALL SUB2(N,L10,I10,R10,R11,D10,LIST)
      CALL SUB3(N,L10,I10,R10,R11,D10,LIST)
      WRITE(6,*) ' L10 = ',L10
      WRITE(6,*) ' I10 = ',(I10(K),K=100,200)
      WRITE(6,*) ' R10 = ',(R10(K),K=300,400)
      WRITE(6,*) ' R11 = ',(R10(K),K=150,250)
      WRITE(6,*) ' D10 = ',(D10(K),K=400,500)
      STOP
      END
      SUBROUTINE INIT(N,L10,I10,R10,R11,D10,LIST)
      LOGICAL L10(N)
      INTEGER I10(N),LIST(N)
      REAL    R10(N),R11(N)
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
          R11(I2) = I
          D10(I2) = DFLOAT(-I)
          L10(I) = 0.EQ.MOD(I,2)
          I2 = I2 + 2
        ENDIF
  10  CONTINUE
      RETURN
      END
      SUBROUTINE SUB1(N,L10,I10,R10,R11,D10,LIST)
      LOGICAL L10(N),LRC
      INTEGER I10(N),LIST(N)
      REAL    R10(N),R11(N)
      REAL*8  D10(N)
      DATA    LRC/.TRUE./,ICON/1/,M/250/
      J = 0
      L = 1
      S1 = 0.
      DO 10 I=1,N
        IF(I.GT.M) THEN
          D10(L) = R10(I)
          L = L + 1
          IF(LRC) THEN
            J = J + ICON
            I10(I) = R10(J)*I
          ELSE
            K = K + ICON
            R11(I) = FLOAT(K)
            S1 = S1 + R11(I)
          ENDIF
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' S1 = ',S1
      RETURN
      END
      SUBROUTINE SUB2(N,L10,I10,R10,R11,D10,LIST)
      LOGICAL L10(N),LRC,LMT0,LMT1,LMT
      INTEGER I10(N),LIST(N)
      REAL    R10(N),R11(N)
      REAL*8  D10(N)
      DATA    LRC/.TRUE./,ICON/1/,ICON1/-1/
      J = 0
      L = 1
      K = 0
      S1 = 0.
      DO 10 I=1,N
        IF(LRC) THEN
          D10(L) = R10(I) + I
          L = L + 1
          LMT0 = .NOT.L10(I)
          LMT1 = R10(I).GT.1.0
          LMT  = LMT1.AND.LMT0.OR.L10(I)
          IF(LMT) THEN
            J = J + ICON
            I10(I) = R10(J) - I
          ELSE
            K = K + ICON
            R11(I) = FLOAT(K)
            S1 = S1 + R11(I)
          ENDIF
        ELSE
          IJ = IJ - ICON1
          L10(IJ) = R10(I).GT.3.
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' S1 = ',S1
      RETURN
      END
      SUBROUTINE SUB3(N,L10,I10,R10,R11,D10,LIST)
      LOGICAL L10(N),LRC
      INTEGER I10(N),LIST(N)
      REAL    R10(N),R11(N)
      REAL*8  D10(N)
      DATA    LRC/.TRUE./,ICON/1/

      K=0
      J = 0
      L = 1
      S1 = 0.
      DO 10 I=1,N
        IF(L10(I)) THEN
          D10(L) = R10(I)
 11       CONTINUE
 12       L = L + 1
          IF(LRC) THEN
 13         J = J + ICON
 14         I10(I) = R10(J)*I
          ELSE
 15         K = K + ICON
 16         R11(I) = FLOAT(K)
 17         S1 = S1 * R11(I)
          ENDIF
        ENDIF
  10  CONTINUE
      WRITE(6,*) ' S1 = ',S1
      WRITE(6,*) ' K  = ',K
      WRITE(6,*) ' J  = ',J
      WRITE(6,*) ' L  = ',L
      RETURN
      END
