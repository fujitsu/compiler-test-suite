      CHARACTER*5 A,B
      CHARACTER   C(2),D(3)
      LOGICAL*4   E,F
C
      DATA A/'ABCDE'/,B/'XXXXX'/
      DATA C/'Y','Z'/,D/'V','W','X'/
C
      E = A.LE.B
      F = C(2).LE.D(2)
C
      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      WRITE(6,*) D
      WRITE(6,*) E
      WRITE(6,*) F
      STOP
      END
