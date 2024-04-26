      INTEGER*4   A1,A2(10)
      REAL*4      B1,B2(10)
      REAL*8      C1,C2(10)
C
      DATA A1/0/
      DATA A2/1,2,3,4,5,6,7,8,9,10/
      DATA B1/0.0/
      DATA B2/3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0/
      DATA C1/0.0/
      DATA C2/4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0/
C
      DO 100 I=1,10
       A1 = A1 + A2(I)
       B1 = B1 + B2(I)
       C1 = C1 + C2(I)
  100 CONTINUE
C
      WRITE(6,*) A1,A2
      WRITE(6,*) B1,B2
      WRITE(6,*) C1,C2
      STOP
      END
