      LOGICAL L401(1200),L402
      INTEGER R401(1200),R402(1200)
      DATA R401,R402/2400*1/
      DATA L401,L402/600*.FALSE.,600*.TRUE.,.TRUE./
      DO 100 I=1,10
  100   NN = I * I * (I+2)
C
      DO 10 I=NN,1,-2
        L402 =.NOT.L402
        IF (L401(I).AND.L402) THEN
          R401(I) = R402(I) + I
        ENDIF
   10 CONTINUE
C
      WRITE(6,1) (R401(I),I=1,1200)
      WRITE(6,*)
    1 FORMAT(12I6)
      STOP
      END
