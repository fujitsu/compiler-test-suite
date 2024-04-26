      INTEGER*8 I800A(10),I800B(10),I800C(10),I800D(10),I800E(10),
     &          I8A/-10/
      INTEGER*4 I400A(10)/10*0/,I400B(10)/10*2/,I4A/4/
      DATA    I800A/10*0/,I800B/10*20/,I800C/10*5/,I800D/10*0/,
     &        I800E/10*0/
C
      DO 10 I=1,10
        IF(I400A(I).EQ.0) THEN
          I800A(I) = IAND(I800B(I),I800C(I))
        ENDIF
   10 CONTINUE
      WRITE(6,*) '** TEST 1 **'
      WRITE(6,*) I800A
      WRITE(6,*) ' '
C
      DO 20 I=1,10
        IF(I400B(I).NE.0) THEN
          I800D(I) = IOR(I800B(I),I8A)
        ENDIF
   20 CONTINUE
      WRITE(6,*) '** TEST 2 **'
      WRITE(6,*) I800D
      WRITE(6,*) ' '
C
      DO 30 I=1,10
        IF(I4A.GT.2) THEN
          I800E(I) = IEOR(I8A,I800B(I))
        ENDIF
   30 CONTINUE
      WRITE(6,*) '** TEST 3 **'
      WRITE(6,*) I800E
      STOP
      END
