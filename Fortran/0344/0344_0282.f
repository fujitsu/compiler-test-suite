      PROGRAM MAIN
      LOGICAL L401(5000),L402(5000),L403(5000),L404(5000)
      LOGICAL L405(5000),L406(5000)
      DATA L406,L405/5000*.FALSE.,5000*.TRUE./
C
      J = 0
      DO 10 I=1,5000
        J = J + 1
        L401(I) = BTEST(I,0)
        L402(I) = BTEST(J,2)
        L403(I) = L406(I)
        L404(I) = L401(I).OR.L402(I)
   10 CONTINUE
C
      J = 3
      DO 20 I=1,5000,J
        L405(I)=L401(I).AND.L402(I).AND.L403(I).AND.L404(I)
        IF (BTEST(I,1)) THEN
          L401(I) = BTEST(I,1+2)
          IF (L401(I).OR.L405(I)) THEN
            L404(I) = BTEST(I,2-1).OR.L405(I)
            L405(I) = L401(I).AND.L404(I)
          ENDIF
        ENDIF
   20 CONTINUE
C
      
      WRITE(6,*)
      WRITE(6,*) (L405(I),I=1,5000,50)
C
      DO 30 I=1,1500
        L401(I) = L402(I).AND.L405(I)
        IF (L401(I)) THEN
          L402(I) = L401(I).OR.L404(I)
        ELSE
          L402(I) = L401(I).AND.L403(I)
        ENDIF
        L405(I) = L401(I).AND.L402(I)
   30 CONTINUE
C
      WRITE(6,*)
      WRITE(6,*) (L405(I),I=1,5000,50)
      STOP
      END
