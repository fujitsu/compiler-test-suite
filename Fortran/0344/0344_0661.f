      REAL*4  A(20),B(20),C(20)
      REAL*4  X(20),Y(20),Z(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA  X/20*7.0/,Y/20*6.0/,Z/20*4.0/
      DO 10 I=2,19
        T1 = A(I) + SIN(C(I))
        T2 = X(I) + Y(I)
        T3 = (T1 + T2) * B(I)
        A(I+1) = T1 + T2 + T3
        Z(I) = T1 + T2 - T3 + A(I)
  10  CONTINUE
      WRITE(6,600) A
      WRITE(6,600) Z
 600  FORMAT(1H , 4(5(E12.4,1X),/))
      STOP
      END
