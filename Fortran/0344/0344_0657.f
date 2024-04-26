      REAL*4  A(20),B(20),C(20)
      REAL*16 X(20),Y(20),Z(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA  X/20*7.Q0/,Y/20*6.Q0/,Z/20*4.Q0/
      DO 10 I=1,20
        T1 = B(I) + C(I)
        T2 = X(I) + Y(I)
        T3 = T1 + T2
        A(I) = T1 + T2 + T3
        Z(I) = T3
  10  CONTINUE
      WRITE(6,600) A
      WRITE(6,600) Z
 600  FORMAT(1H , 4(5(E10.3,1X),/))
      STOP
      END
