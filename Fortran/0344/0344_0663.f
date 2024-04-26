      REAL*4  A(20),B(20),C(20)
      REAL*16 X(20),Y(20),Z(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA  X/20*7.Q0/,Y/20*6.Q0/,Z/20*4.Q0/
      S=0.
      DO 10 I=2,19
        T = Y(I) + Z(I)
        A(I) = B(I) + SIN(C(I))+T
        X(I) = X(I)+A(I)*Z(I)
  10  CONTINUE
      WRITE(6,601) S
 601  FORMAT(1H , E12.4 )
      WRITE(6,600) A
      WRITE(6,600) X
 600  FORMAT(1H , 4(5(E12.4,1X),/))
      STOP
      END
