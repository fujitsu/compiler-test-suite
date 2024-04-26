      INTEGER*4   A1,A2
      INTEGER*4   B1,B2
C
      DATA A1/-123/,A2/-234/
      DATA B1/-987/,B2/-876/
C
       A1 = ABS(A1)
       A2 = ABS(A2)
       B1 = ABS(B1)
       B2 = ABS(B2)
C
C
      WRITE(6,*) A1,A2
      WRITE(6,*) B1,B2
      STOP
      END
