      REAL*4  A(20),B(20),C(20)
      REAL*4  X(20),Y(20),Z(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA  X/20*7.0/,Y/20*6.0/,Z/20*4.0/
      S=0.
      DO 10 I=2,19
        T1 = S + A(I) - B(I)
        T2 = T1 - C(I)
        T3 = X(I) + T2
        T4 = T3 - Y(I)
        S  = T4 + Z(I)
        A(I) = T1 + MAX1(A(I),B(I))
  10  CONTINUE
      WRITE(6,601) S
 601  FORMAT(1H , E12.4 )
      WRITE(6,600) Z
 600  FORMAT(1H , 4(5(E12.4,1X),/))
      STOP
      END
