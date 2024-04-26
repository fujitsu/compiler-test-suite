      INTEGER*8 I800A(10),I800B(10),I800C(10),I800D(10),I800E(10),
     &          I8A/-10/,I8D/0/,I8F/0/,I8G/-3/
      DATA    I800A/10*0/,I800B/10*20/,I800C/10*0/,I800D/10*0/,
     &        I800E/10*0/
C
      DO 10 I=1,10
        I800A(I) = NOT(I800B(I))
   10 CONTINUE
      WRITE(6,*) '** TEST 1 **'
      WRITE(6,*) I800A
      WRITE(6,*) ' '
C
      DO 20 I=1,10
        I800C(I) = NOT(I800B(5))
   20 CONTINUE
      WRITE(6,*) '** TEST 2 **'
      WRITE(6,*) I800C
      WRITE(6,*) ' '
C
      DO 30 I=1,10
        I800D(I) = NOT(I8A)
   30 CONTINUE
      WRITE(6,*) '** TEST 3 **'
      WRITE(6,*) I800D
      WRITE(6,*) ' '
C
      DO 40 I=1,10
        I800E(3) = NOT(I800B(I))
   40 CONTINUE
      WRITE(6,*) '** TEST 4 **'
      WRITE(6,*) I800E
      WRITE(6,*) ' '
C
      DO 50 I=1,10
        I800E(5) = NOT(I800B(5))
   50 CONTINUE
      WRITE(6,*) '** TEST 5 **'
      WRITE(6,*) I800E
      WRITE(6,*) ' '
C
      DO 60 I=1,10
        I800E(7) = NOT(I8A)
   60 CONTINUE
      WRITE(6,*) '** TEST 6 **'
      WRITE(6,*) I800E
      WRITE(6,*) ' '
C
      DO 70 I=1,10
        I8D = NOT(I800B(I))
   70 CONTINUE
      WRITE(6,*) '** TEST 7 **'
      WRITE(6,*) I8D
      WRITE(6,*) ' '
C
      DO 80 I=1,10
        I8F = NOT(I800B(5))
   80 CONTINUE
      WRITE(6,*) '** TEST 8 **'
      WRITE(6,*) I8F
      WRITE(6,*) ' '
C
      DO 90 I=1,10
        I8G = NOT(I8A)
   90 CONTINUE
      WRITE(6,*) '** TEST 9 **'
      WRITE(6,*) I8G
      WRITE(6,*) ' '
      STOP
      END
