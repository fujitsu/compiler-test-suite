      REAL*4  A(20),B(20),C(20)
      REAL*4  X(20),Y(20),Z(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA  X/20*7.0/,Y/20*6.0/,Z/20*4.0/
      S=0.
      DO 10 I=2,19
        S  = S + A(I) - B(I)
        A(I) = B(I) + C(I)
        X(I) = X(I-1)+Y(I)*Z(I)
  10  CONTINUE
      WRITE(6,601) S
 601  FORMAT(1H , E12.4 )
      WRITE(6,600) A
      WRITE(6,600) X
 600  FORMAT(1H , 4(5(E12.4,1X),/))
      STOP
      END
