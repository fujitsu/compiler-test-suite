      INTEGER*4   A1,A2(10)
      REAL*4   B1,B2(10)
      REAL*8   C1,C2(10)
C
      DATA A1/0/
      DATA A2/0,0,0,0,5,0,0,0,0,0/
      DATA B1/0.0/
      DATA B2/0.0,0.0,0.0,0.0,5.0,0.0,0.0,0.0,0.0,0.0/
      DATA C1/0.0/
      DATA C2/0.0,0.0,0.0,0.0,5.0,0.0,0.0,0.0,0.0,0.0/
C
      N = A2(5)
C
      DO 100 I=1,N
       A1 = A2(I)
       B1 = B2(I)
       C1 = C2(I)
  100 CONTINUE
C
      WRITE(6,*) A1,A2
      WRITE(6,*) B1,B2
      WRITE(6,*) C1,C2
      STOP
      END
