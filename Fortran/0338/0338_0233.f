      INTEGER*2   A1,A2
      INTEGER*4   B1,B2
C
      DATA A1,A2/2*1/
      DATA B1,B2/2*1/
C
       A1 = MOD(A1,A2)
       B1 = MOD(B1,B2)
C
      WRITE(6,*) A1,B1
      WRITE(6,*) A2,B2
      STOP
      END
