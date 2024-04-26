      PROGRAM MAIN
      INTEGER I401(20),I402(20),I403(20),I404(20)
      LOGICAL L401(20),L402/.FALSE./,L403(20)/20*.FALSE./
C
      DO 10 I=1,20
        L401(I) = BTEST(I,0)
        I401(I) = IBSET(I,0)
        I402(I) = IBCLR(I,0)
        I403(I) = IBSET(I,2)
        I404(I) = IBCLR(I,2)
   10 CONTINUE
C
      DO 20 I=1,20
        L402 = I401(I) .GT. I402(I)
        IF (L401(I)) THEN
          L403(I) = L402 .AND. .NOT.L403(I)
        ENDIF
   20 CONTINUE
      WRITE(6,*) L402
      WRITE(6,*) L403
C
      DO 30 I=1,20
        L402 = .TRUE.
        IF (L401(I)) THEN
          L402  = L403(I)
        ENDIF
   30 CONTINUE
      WRITE(6,*) L402
C
      DO 40 I=1,20
        L402 = I404(I).LE.I402(I)
        IF (L401(I)) THEN
          L402  = I401(I).GT.I403(I)
        ENDIF
   40 CONTINUE
      WRITE(6,*) L402
C
      STOP
      END
