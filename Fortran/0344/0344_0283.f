      PROGRAM MAIN
      INTEGER I401(1500),I402(1500),I403(1500),LIST(1500)
      LOGICAL L401(1500)/1500*.TRUE./,L402/.TRUE./,L403(1500)
      DATA    I401,I402,I403/4500*2/
C
      DO 10 I=1,1500
        LIST(I) = I
        L403(I) = BTEST(LIST(I),2)
        IF (I.EQ.LIST(I)) THEN
          M = I - 1000
        ENDIF
   10 CONTINUE
C
      DO 20 I=1,1500
        IF (MOD(I,3).EQ.0) THEN
          I401(M) = I402(I) * (SIN(REAL(I)) * 100)
        ENDIF
        IF (MOD(I,3).EQ.0) THEN
          I403(LIST(I)) = I402(I) + SIN(REAL(I))
        ENDIF
   20 CONTINUE
      
      WRITE(6,*) I401(499),I401(500),I402(501)
      WRITE(6,*) (I403(I),I=1,1500,10)
      WRITE(6,*)
C
      DO 30 I=1,1500
        L401(M) = I402(I).LT.I403(I)
        L402    = L403(I)
        IF (MOD(I,3).EQ.2) THEN
          L401(M) = I.GT.LIST(I)
        ELSE
          L402    = .NOT.L403(I)
        ENDIF
   30 CONTINUE
      WRITE(6,*) L401(M),L402
C
      STOP
      END
