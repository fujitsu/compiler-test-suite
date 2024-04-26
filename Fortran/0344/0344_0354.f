      PROGRAM MAIN
      INTEGER A(10,10),B,C,E
      COMMON /C1/A,B,C,E
      REAL D(10,10)
      EQUIVALENCE(A(1,1),D(1,1))
      B=10
      C=2
      E=1
      DO 10 I=1,10
        DO 10 J=1,10
          A(J,I)=1
   10 CONTINUE
      DO 38 I=1,B
   38   IF (A(I,C) .LT. A(E,C)) E=I
      
      WRITE(6,*) A
      STOP
      END
