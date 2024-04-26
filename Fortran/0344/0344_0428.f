      PROGRAM MAIN
      INTEGER A(30,30)/900*1/,B(2000)/2000*0/,C(2000)/2000*0/
      LOGICAL L(2000)/2000*.TRUE./
C
      DO 10 I=1,30
        DO 10 J=2,30,2
          A(I,J)   = IBCLR(ISHFT(J,I),MIN(I,J))
          A(I,J-1) = IBCLR(ISHFT(I,J),MAX(I,J))
   10 CONTINUE
      
      WRITE(6,*)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,3) ((A(I,J),I=1,30,5),J=1,30,5)
      WRITE(6,*)
C
      DO 20 I=1,2000
        IF ((I.LE.31).AND.(I.GE.0)) THEN
          B(I) = IBCLR(I**2,I)
          IF ((B(I).LE.31).AND.(B(I).GE.0)) THEN
            C(I) = IBSET(I,B(I))
          ENDIF
          IF ((C(I).LE.31).AND.(C(I).GE.0)) THEN
            L(I) = BTEST(NOT(B(I)),C(I))
          ENDIF
        ENDIF
   20 CONTINUE
C
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,1) (B(I),I=1,31)
      WRITE(6,1) (B(I),I=32,2000,50)
      WRITE(6,*)
      WRITE(6,3) (C(I),I=1,31)
      WRITE(6,1) (C(I),I=32,2000,50)
      WRITE(6,*)
      WRITE(6,2) (L(I),I=1,31)
      WRITE(6,2) (L(I),I=32,2000,50)
    1 FORMAT(15I5)
    2 FORMAT(25L3)
    3 FORMAT(5I15)
      STOP
      END
