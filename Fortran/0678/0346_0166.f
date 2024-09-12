          REAL*4 A(10,2),B(10,2),C(10,2)
          REAL*4 ZZ(10,2),XX(10,2),YY(10,2),WW(10,2)
          DATA A/20*4.0/
          DATA B/20*2.0/
          DATA C/20*1.0/
          DATA S1,S2/1.,2./
          DO 333 J=1,2
          DO 333 I=1,10
             ZZ(I,J) =  A(I,J) / S1 / S2
             YY(I,J) =  B(I,J) /S1 / C(I,J)
             XX(I,J) =  S1 / A(I,J) / B(I,J)
             WW(I,J) =  S1 / S2 / C(I,J)
 333      CONTINUE
          PRINT *,ZZ,YY,XX,WW
          END
