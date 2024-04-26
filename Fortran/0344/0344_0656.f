      REAL*4  A(20),B(20),C(20),D(20),E(20),F(20)
      REAL*4  X(20),Y(20),Z(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA  D/20*2./,E/20*5./,F/20*2./
      DATA  X/20*7./,Y/20*6./,Z/20*4./
      DO 10 I=1,20
        T1 = A(I) + B(I)
        T2 = C(I) + D(I)
        T3 = E(I) + F(I)
        T4 = X(I) - T1
        T5 = Y(I) - T1 + T2
        T6 = Z(I) - T1 + T2 - T3
        T7 = T1 + T2 + T3 + T4 + T5 - T6
        Z(I) = T7
        A(I) = MAX1(T1,T2) - MIN1(T3,T4) + MAX1(T5,T6)
  10  CONTINUE
      WRITE(6,600) A
      WRITE(6,600) Z
 600  FORMAT(1H , 4(5(E10.3,1X),/))
      STOP
      END
