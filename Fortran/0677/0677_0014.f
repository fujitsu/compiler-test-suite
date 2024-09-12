      INTEGER*4 A(10),B(10)/10*10/
      INTEGER*4 D(10)

      DO 10 I=1,10
        A(I) = B(I)
        D(I) = B(I)+A(I)
  10  CONTINUE

      WRITE(6,*) A,D
      STOP
      END
