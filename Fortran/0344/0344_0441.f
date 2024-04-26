      INTEGER*8 I800A(10),I800B(10),I800C(10),I800D(10),I800E(10),
     &          I8A/-10/,I8B/13/,I8C/2/,I8D/0/,I8E/4/,I8F/0/
      DATA    I800A/10*0/,I800B/10*20/,I800C/10*5/,I800D/10*0/,
     &        I800E/10*0/
C
      DO 10 I=1,10
        I800A(I) = IAND(I800B(I),I800C(I))
   10 CONTINUE
      WRITE(6,*) '** TEST 1 **'
      WRITE(6,*) I800A
      WRITE(6,*) ' '
C
      DO 20 I=1,10
        I800D(I) = IAND(I800B(I),I8A)
   20 CONTINUE
      WRITE(6,*) '** TEST 2 **'
      WRITE(6,*) I800D
      WRITE(6,*) ' '
C
      DO 30 I=1,10
        I800E(I) = IAND(I8A,I800B(I))
   30 CONTINUE
      WRITE(6,*) '** TEST 3 **'
      WRITE(6,*) I800E
      WRITE(6,*) ' '
C
      DO 40 I=1,10
        I8B = IAND(I800B(I),I800C(I))
   40 CONTINUE
      WRITE(6,*) '** TEST 4 **'
      WRITE(6,*) I8B
      WRITE(6,*) ' '
C
      DO 50 I=1,10
        I8C = IAND(I800B(I),I8A)
   50 CONTINUE
      WRITE(6,*) '** TEST 5 **'
      WRITE(6,*) I8C
      WRITE(6,*) ' '
C
      DO 60 I=1,10
        I8D = IAND(I8A,I800C(I))
   60 CONTINUE
      WRITE(6,*) '** TEST 6 **'
      WRITE(6,*) I8D
      WRITE(6,*) ' '
C
      DO 70 I=1,10
        I8E = IAND(I8A,I8F)
   70 CONTINUE
      WRITE(6,*) '** TEST 7 **'
      WRITE(6,*) I8E
      WRITE(6,*) ' '
      STOP
      END
