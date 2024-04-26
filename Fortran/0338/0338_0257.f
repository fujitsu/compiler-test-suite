      INTEGER*4   A1(10),A2(10),A3(10)
      LOGICAL*4   B1(10),B2(10),B3(10)
C
      DATA A1/2,3,4,5,6,7,8,9,10,11/
      DATA A2/2,3,4,5,6,7,8,9,10,11/
      DATA A3/2,3,4,5,6,7,8,9,10,11/
      DATA B1,B2,B3/30*.TRUE./
C
      DO 100 I=1,10
       A1(I) = IEOR(A2(I),A3(I))
       B1(I) = B2(I).NEQV.B3(I)
  100 CONTINUE
C
      WRITE(6,*) A1,A2,A3
      WRITE(6,*) B1,B2,B3
      STOP
      END
