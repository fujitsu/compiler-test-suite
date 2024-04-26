      PROGRAM MAIN
      INTEGER LIST(100),I401(100)
      LOGICAL L401(100),L402(100)
      COMPLEX C801(100),C802(100)
C
      DO 2 I=1,100
        LIST(I) = I
        L401(I) = .FALSE.
        L402(I) = .TRUE.
        C801(I) = 0
    2   C802(I) = I
C
      DO 10 I=1,100
        I401(I) = LIST(I)
        IF (BTEST(I,0)) THEN
          C801(LIST(I)) = IBSET(INT(C802(LIST(I))),2) + I
          L401(LIST(I)) = BTEST(LIST(I),2).AND.BTEST(I,1)
          L402(I) = (I.GE.80).AND.(LIST(I).LT.I)
          C801(LIST(I)) = C801(LIST(I)) + I
          L401(LIST(I)) = L402(I).OR.BTEST(INT(C802(I)),1)
          L402(I) = L402(I).AND.L401(I)
        ENDIF
   10 CONTINUE
C
      
      WRITE(6,1) (C801(I),I=1,100,10)
      WRITE(6,*) (L401(I),I=1,100,10)
      WRITE(6,*) (L402(I),I=1,100,10)
    1 FORMAT(2(1X,'(',E15.6,',',E15.6,')'))
      STOP
      END
