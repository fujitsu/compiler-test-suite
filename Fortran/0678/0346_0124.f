      DIMENSION  A(10,10),B(10),C(10,10),D(10,10),IA(10)
      DATA  A,B,C,D/100*1.0,10*4.0,100*2.0,100*5.0/
      DATA  IA/10*1/
      DATA  N/10/
      IX = 0
      DO 10 J=1,N
        IX = IX + IA(J)
        DO 10 I=1,N
          C(I,J) = A(I,IX) + B(I)
          D(I,IX) = C(I,J) + D(I,J)
   10 CONTINUE
      WRITE(6,*) IX,C,D
      STOP
      END
