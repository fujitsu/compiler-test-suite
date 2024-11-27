          REAL*4 A(10,2),B(10,2),C(10,2),D(10,2)
          REAL*4 ZZ(10,2),XX(10,2),YY(10,2)
          DATA A/20*1.0/
          DATA B/20*1.0/
          DATA C/20*1.0/
          DATA D/20*1.0/
          S1=1.
          S2=2.
          DO 222 J=1,2
          DO 222 I=1,10
             XX(I,J) = ( A(I,J) * S1 ) * ( B(I,J) * S2)
             YY(I,J) = ( S1 * C(I,J) ) * ( S2 * D(I,J) )
             ZZ(I,J) = ( D(I,J) * S1)  * ( S2 * S1 )
 222      CONTINUE
          PRINT *,XX,YY,ZZ
          END
