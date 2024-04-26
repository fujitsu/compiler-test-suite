      INTEGER*2   A
      INTEGER*4   B
      LOGICAL*4   C1,C2
C
      DATA A/5/
      DATA B/10/
      DATA C1,C2/2*.FALSE./
C
      C1 = BTEST(A,2)
      C2 = BTEST(B,3)
C
      WRITE(6,*) A,B,C1,C2
      STOP
      END
