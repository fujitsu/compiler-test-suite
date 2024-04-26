      REAL*4  A(20),B(20),C(20)
      REAL*4  X(20),Y(20),Z(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA  X/20*7.0/,Y/20*6.0/,Z/20*4.0/
      DO 10 I=2,19
        T1 = A(I) + C(I)
        T2 = X(I) + Y(I)
        T3 = (T1 + T2) * A(I)
        A(I+1) = B(I) + C(I) - T2
        Z(I) = T1 + T2 - T3 + A(I)
  10  CONTINUE
      WRITE(6,600) A
 600  FORMAT(1H , 4(5(E10.3,1X),/))
      STOP
      END
