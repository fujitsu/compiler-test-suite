      REAL*4  A(20),B(20),C(20)
      REAL*4  X(20),Y(20),Z(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA  X/20*4.0/,Y/20*2.0/,Z/20*3.0/
      S1=0.
      S2=0.
      DO 10 I=2,19
        T1 = B(I) * C(I)
        T2 = Y(I) + Z(I)
        S1 = S1 + A(I) - T1
        X(I) = X(I-1) + T2
        S2 = S2 + T1 + T2
  10  CONTINUE
      WRITE(6,601) S1
      WRITE(6,601) S2
 601  FORMAT(1H , E12.4 )
      WRITE(6,600) A
      WRITE(6,600) X
 600  FORMAT(1H , 4(5(E12.4,1X),/))
      STOP
      END
