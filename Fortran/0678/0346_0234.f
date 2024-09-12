      DIMENSION  A(10,10),B(10,10),C(10,10),S(11)
      DATA  A,B,C,S/100*1.0,100*2.0,100*3.0,11*4.0/
      DIMENSION  A1(10,10),B1(10,10),C1(10,10)
      DATA  A1,B1,C1/100*1.0,100*2.0,100*3.0/
      DO 10 J=1,10
      DO 10 I=1,10
        A(I,J) = S(J) + B(I,J)
        C(I,J) = S(J+1) + B(I,J)
        A1(I,J) = S(J) + B1(I,J)
        C1(I,J) = S(J+1) + B1(I,J)
   10 CONTINUE
      WRITE(6,*) A,C,A1,C1
      STOP
      END
