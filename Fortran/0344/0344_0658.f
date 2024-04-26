      REAL*4  A(20),B(20),C(20)
      REAL*4  X(20),Y(20),Z(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA  X/20*7.0/,Y/20*6.0/,Z/20*4.0/
      DO 10 I=1,20
        T1 = B(I) + C(I)
        T2 = X(I) + Y(I)
        T3 = (T1 + T2) * A(I)
        CALL SUB(T3)
        T4 = T3 + A(I)*C(I)
        T5 = Z(I)*A(I)-Y(I)
        T6 = T1 + T2 - T4 + T5 - X(I)
        A(I) = T6 + T1*T2
  10  CONTINUE
      WRITE(6,600) A
 600  FORMAT(1H , 4(5(E10.3,1X),/))
      STOP
      END
      SUBROUTINE SUB(X)
      X=X+1.
      RETURN
      END
