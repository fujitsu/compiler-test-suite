      INTEGER*4   A1(10),A2(10)
      INTEGER*4   B1(10),B2(10)
C
      DATA A1/10*-123/,A2/10*-234/
      DATA B1/10*-987/,B2/10*-876/
C
      DO 100 I=1,10
       A1(I) = ABS(A1(I))
       A2(I) = ABS(A2(I))
       B1(I) = ABS(B1(I))
       B2(I) = ABS(B2(I))
  100 CONTINUE
C
      WRITE(6,*) A1,A2
      WRITE(6,*) B1,B2
      STOP
      END
