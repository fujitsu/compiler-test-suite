      INTEGER*4   A1(10),A2(10)
C
      DATA A1,A2/20*8/
C
      DO 100 I=1,10
       A1(I) = ISHFT(A2(I),16)
  100 CONTINUE
C
      WRITE(6,*) A1,A2
      STOP
      END
