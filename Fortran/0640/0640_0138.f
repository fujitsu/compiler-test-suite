      PROGRAM MAIN
      REAL    R10(10,10),R11(10,10)
      REAL*8  D10(10,10)
      INTEGER I10(10,10),LIST(10)
      LOGICAL L10(10,10)
      N = 10
      M = 10
      CALL INIT(N,M,L10,I10,R10,R11,D10,LIST)
      CALL SUB1(N,M,L10,I10,R10,R11,D10,LIST)
      CALL SUB2(N,M,L10,I10,R10,R11,D10,LIST)
      CALL SUB3(N,M,L10,I10,R10,R11,D10,LIST)
      WRITE(6,*) ' L10 = ',L10
      WRITE(6,*) ' I10 = ',I10
      WRITE(6,*) ' R10 = ',R10
      WRITE(6,*) ' R11 = ',R11
      WRITE(6,*) ' D10 = ',D10
      STOP
      END
      SUBROUTINE INIT(N,M,L10,I10,R10,R11,D10,LIST)
      LOGICAL L10(N,N)
      INTEGER I10(N,N),LIST(N)
      REAL    R10(N,N),R11(N,N)
      REAL*8  D10(N,N)
      DO 10 I=1,N
        DO 10 J = 1,N
          LIST(I)   = I
          L10(I,J)  = 0.EQ.(MOD(I,2))
          I10(I,J)  = I + J
          R10(I,J)  = I * J
          D10(I,J)  = 2*I + 2*J
          R11(I,J)  = 3*I * J
  10  CONTINUE
      RETURN
      END
      SUBROUTINE SUB1(N,M,L10,I10,R10,R11,D10,LIST)
      LOGICAL L10(N,N),LRC
      INTEGER I10(N,N),LIST(N)
      REAL    R10(N,N),R11(N,N)
      REAL*8  D10(N,N)
      DATA    LRC/.TRUE./,ICON/1/
      K = 0
      L = 1
      IJ = 0
      S1 = 0.
      N1 = N/2
      DO 10 I=1,N1
        DO 10 J=1,N1
          IF(L10(I,J)) THEN
            I10(I,J) = R11(L,J)
            L = L + 1
            IF(LRC) THEN
              K = K + ICON
              R10(K,J) = R11(I,J)
            ELSE
              IJ = IJ + 1
              S1 = S1 + R11(I,J)
              D10(I,IJ) = I + J
            ENDIF
          ENDIF
  10  CONTINUE
      WRITE(6,*) ' S1 = ',S1
      RETURN
      END
      SUBROUTINE SUB2(N,M,L10,I10,R10,R11,D10,LIST)
      LOGICAL L10(N,N),LRC,LMT
      INTEGER I10(N,N),LIST(N)
      REAL    R10(N,N),R11(N,N)
      REAL*8  D10(N,N)
      DATA    LRC/.TRUE./,ICON/1/
      K = 0
      L = 1
      IJ = 0
      N1 = N/3
      DO 10 I=1,N1
        DO 10 J=1,N1
          IF(LRC) THEN
            IF(L.LE.10) THEN
              I10(I,J) = R11(L,J)
              L = L + 1
              LMT = I10(I,J) .GT. 3
              IF(LMT.AND.K.LT.10) THEN
                K = K + ICON
                R10(K,J) = R11(I,J)
              ELSE
                IJ = IJ + 1
                D10(I,IJ) = I + J
              ENDIF
            ENDIF
          ENDIF
  10  CONTINUE
      RETURN
      END
      SUBROUTINE SUB3(N,M,L10,I10,R10,R11,D10,LIST)
      LOGICAL L10(N,N)
      INTEGER I10(N,N),LIST(N)
      REAL    R10(N,N),R11(N,N)
      REAL*8  D10(N,N)
      K = 0
      L = 1
      IJ = 0
      N1 = N/3
      DO 10 I=1,N1
        I10S = I10(I,1) + LIST(I)
        DO 11 J =1,N1
          R10(I,J) = R11(I,J) + I10S
          IF(L10(I,J)) THEN
            K = K + 1
            D10(K,J) = R10(I,J) * I
          ENDIF
 11     CONTINUE
        IF(I.GT.5) THEN
          R11(I,L) = I
          L = L + 1
        ENDIF
  10  CONTINUE
      RETURN
      END
