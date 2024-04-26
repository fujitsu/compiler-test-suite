      INTEGER*8 I800A(10),I800B(10),I800C(10),I8A/0/
      INTEGER*4 I400A(10)/1,0,0,1,0,1,1,1,0,1/
      DATA    I800A/10*0/,I800B/10*20/,I800C/10*1/
C
      DO 10 I=1,10
        IF(I400A(I).EQ.1) THEN
          I800A(I) = I800B(I)
        ENDIF
   10 CONTINUE
      WRITE(6,*) '** TEST 1 **'
      WRITE(6,*) I800A
      WRITE(6,*) ' '
C
      DO 20 I=1,10
        IF(I400A(I).GT.0) THEN
          I800C(3) = I800B(I)
        ENDIF
   20 CONTINUE
      WRITE(6,*) '** TEST 2 **'
      WRITE(6,*) I800C
      WRITE(6,*) ' '
C
      DO 30 I=1,10
        IF(I400A(I).NE.0) THEN
          I8A = I800B(I)
        ENDIF
   30 CONTINUE
      WRITE(6,*) '** TEST 3 **'
      WRITE(6,*) I8A
      STOP
      END
