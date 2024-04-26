      PROGRAM MAIN
      INTEGER A(10,100)/1000*1/
      LOGICAL L1,L2(10,100)/1000*.FALSE./
C
      DO 10 I=1,10
        DO 10 J=1,100
          IF (MOD(I,J).EQ.1) THEN
            A(I,J)=IBSET(I,MOD(I,J))
          ELSE
            IF (MOD(I,J).EQ.2) THEN
              A(I,J)=IBSET(MOD(I,J),I)
            ENDIF
          ENDIF
   10 CONTINUE
      
      WRITE(6,*)
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,1) ((A(I,J),I=1,10),J=1,100,10)
      WRITE(6,*)
C
      DO 20 I=1,100
        DO 20 J=1,10
          L1 = BTEST(I,J)
          IF (A(J,I).LE.0) THEN
            L1 = L1.OR.BTEST(A(J,I),A(J,I))
          ENDIF
          L2(J,I) = L1
   20 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,2) ((L2(I,J),I=1,10,2),J=1,100,5)
      WRITE(6,*)
C
      DO 30 I=1,100
        DO 30 J=1,10
          L1 = BTEST(I,J)
          IF (A(J,I).LE.0) THEN
            L2(J,I) = L1.OR.BTEST(A(J,I),A(J,I))
          ENDIF
          L1 = L2(J,I)
   30 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,2) L1
      WRITE(6,*)
    1 FORMAT(20I3)
    2 FORMAT(25L3)
      STOP
      END
