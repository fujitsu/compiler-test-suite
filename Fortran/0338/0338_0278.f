      CHARACTER*5 A,B
      CHARACTER   C(2),D(3)
C
      DATA C/'Y','Z'/,D/'V','W','X'/
C
      A = 'ABCDE'
      B = 'XXXXX'
      A = B
      C(2) = D(3)
C
      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      WRITE(6,*) D
      STOP
      END
