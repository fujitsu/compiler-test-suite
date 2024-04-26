      INTEGER*8 I800A(10),I800B(10),I800C(10),I8A/0/
      INTEGER*4 I400D(10)/2,5,6,7,1,2,5,3,8,8/
      DATA    I800A/5*0,5*1/,I800B/10*20/,I800C/10*0/
C
      DO 10 I=1,10
        I800A(I400D(I)) = I800B(I)
   10 CONTINUE
      WRITE(6,*) '** TEST 1 **'
      WRITE(6,*) I800A
      WRITE(6,*) ' '
C
      DO 20 I=1,10
        I800C(3) = I800B(I400D(I))
   20 CONTINUE
      WRITE(6,*) '** TEST 2 **'
      WRITE(6,*) I800C
      WRITE(6,*) ' '
C
      DO 30 I=1,9
        I8A = I800B(I400D(I+1))
   30 CONTINUE
      WRITE(6,*) '** TEST 3 **'
      WRITE(6,*) I8A
      STOP
      END
