      DIMENSION  A(20),B(20),C(10,10)
      DATA  A,B,C/20*1.0,20*4.0,100*2.0/
      INTEGER*4 IA(10,10)/100*1/
      DATA  N/10/
      DO 10 J=1,N
      IX = 0
        DO 10 I=1,N
          IX = IX + IA(I,J)
          A(IX) = B(IX) + C(IX,J)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
