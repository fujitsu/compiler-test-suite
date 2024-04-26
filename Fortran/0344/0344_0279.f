      PROGRAM MAIN
      INTEGER I401(1500),I402(1500),I403(1500)
      DATA N/10/,M/0/
      DO 10 I=1,1500
        I401(I) = I
        I402(I) = MOD(I,10)
        I403(I) = I401(I) + I402(I)
   10 CONTINUE
C
      
      DO 20 I=1,1500
        IF (MOD(I,3).EQ.0) THEN
          M = M + 1
          I401(M) = I402(M) * I403(I) + SIN(REAL(I))*10
        ENDIF
   20 CONTINUE
      WRITE(6,1) (I401(I),I=1,600,10)
      DO 30 I=1,1500
        IF (MOD(I,4).EQ.0) THEN
          I401(N) = I402(N) * I403(I) + SIN(REAL(I))*20
        ENDIF
   30 CONTINUE
      WRITE(6,*) I401(N)
      DO 40 I=1,1500
        IF (MOD(I,5).EQ.0) THEN
          I401(6) = I402(I) * I403(7) + SIN(REAL(I))*30
        ENDIF
   40 CONTINUE
      WRITE(6,*) I401(6)
      DO 50 I=1,1500
        M = 15
        IF (MOD(I,3).EQ.0) THEN
          I401(M) = I402(M) * I403(I) + SIN(REAL(I))*10
        ENDIF
   50 CONTINUE
      WRITE(6,*) I401(M)
    1 FORMAT(10I7)
C
      STOP
      END
