      INTEGER*8 I800A(10),I800B(10),I800C(10),I800D(10),
     &          I8A/-10/,I8B/13/,I8C/2/,I8D/0/,I8E/4/,I8F/0/,I8G/-3/
      INTEGER*4 I400A(10),I4A/2/
      DATA    I800A/10*0/,I800B/10*20/,I800C/10*0/,I800D/10*0/
      DATA    I400A/1,1,0,-2,-3,2,1,1,2,3/
C
      DO 10 I=1,10
        I800A(I) = ISHFT(I800B(I),I400A(I))
   10 CONTINUE
      WRITE(6,*) '** TEST 1 **'
      WRITE(6,*) I800A
      WRITE(6,*) ' '
C
      DO 20 I=1,10
        I800C(I) = ISHFT(I800B(I),I4A)
   20 CONTINUE
      WRITE(6,*) '** TEST 2 **'
      WRITE(6,*) I800C
      WRITE(6,*) ' '
C
      DO 30 I=1,10
        I800D(I) = ISHFT(I8A,I400A(I))
   30 CONTINUE
      WRITE(6,*) '** TEST 3 **'
      WRITE(6,*) I800D
      WRITE(6,*) ' '
C
      DO 40 I=1,10
        I8B = ISHFT(I800B(I),I400A(I))
   40 CONTINUE
      WRITE(6,*) '** TEST 4 **'
      WRITE(6,*) I8B
      WRITE(6,*) ' '
C
      DO 50 I=1,10
        I8C = ISHFT(I800B(I),I4A)
   50 CONTINUE
      WRITE(6,*) '** TEST 5 **'
      WRITE(6,*) I8C
      WRITE(6,*) ' '
C
      DO 60 I=1,10
        I8D = ISHFT(I8E,I400A(I))
   60 CONTINUE
      WRITE(6,*) '** TEST 6 **'
      WRITE(6,*) I8D
      WRITE(6,*) ' '
C
      DO 70 I=1,10
        I8F = ISHFT(I8G,I4A)
   70 CONTINUE
      WRITE(6,*) '** TEST 7 **'
      WRITE(6,*) I8F
      WRITE(6,*) ' '
      STOP
      END
