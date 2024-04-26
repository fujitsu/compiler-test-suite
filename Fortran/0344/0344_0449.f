      INTEGER*8 I800A(10),I800B(10),I800C(10),I8A/0/
      DATA    I800A/10*0/,I800B/10*20/,I800C/10*0/
C
      DO 10 I=1,10,2
        I800A(I) = I800B(I)
   10 CONTINUE
      WRITE(6,*) '** TEST 1 **'
      WRITE(6,*) I800A
      WRITE(6,*) ' '
C
      DO 20 I=1,10,2
        I800C(3) = I800B(I)
   20 CONTINUE
      WRITE(6,*) '** TEST 2 **'
      WRITE(6,*) I800C
      WRITE(6,*) ' '
C
      DO 30 I=1,10,3
        I8A = I800B(I)
   30 CONTINUE
      WRITE(6,*) '** TEST 3 **'
      WRITE(6,*) I8A
      STOP
      END
