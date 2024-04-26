      PROGRAM MAIN
      INTEGER*8 I800A(10)/10*100/,I800B(10)/0,1,2,3,4,5,6,7,8,9/
      INTEGER*8 I8C/5/
      INTEGER*4 I400A(10)/5,2,1,0,2,10,4,1,5,3/
      INTEGER*4 I4C/1/,I400D(10)/10*0/,I400E(10)/10*0/
      LOGICAL*4 L400A(10)/10*.TRUE./,L4B/.FALSE./,L400C(10)/10*.TRUE./
C
      DO 10 I=1,10
        IF (I400A(I).LE.1) THEN
          L400A(I) = BTEST(I800A(I),I)
        ENDIF
   10 CONTINUE
      
      WRITE(6,*)
      WRITE(6,*) '## TEST 1 ##'
      WRITE(6,2) L400A
      WRITE(6,*)
C
      DO 20 I=1,10
        IF (L400A(I)) THEN
          I800A(I) = IBSET(I800B(I),I)
        ENDIF
   20 CONTINUE
      WRITE(6,*) '## TEST 2 ##'
      WRITE(6,1) I800A
      WRITE(6,*)
C
      DO 30 I=1,10
        IF (.NOT.L4B) THEN
          I800A(I) = IBCLR(I800B(I),I400A(I))
        ENDIF
   30 CONTINUE
      WRITE(6,*) '## TEST 3 ##'
      WRITE(6,1) I800A
      WRITE(6,*)
C
      DO 40 I=1,10
        IF (L400A(I).AND..NOT.L4B) THEN
          L400C(I) = .FALSE.
          I400D(I) = IAND(I800B(I),I)
          I400E(I) = IOR(I800A(I),I)
        ELSE
          L400C(I) = BTEST(I800B(I),I)
          I400D(I) = IBSET(I8C,I+I4C)
          I400E(I) = IBCLR(I800A(I),I4C)
        ENDIF
   40 CONTINUE
      WRITE(6,*) '## TEST 4 ##'
      WRITE(6,2) L400C
      WRITE(6,1) I400D
      WRITE(6,1) I400E
      WRITE(6,*)
    1 FORMAT(10I7)
    2 FORMAT(10L7)
      STOP
      END
