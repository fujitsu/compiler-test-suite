          REAL*4 A(30),B(30),C(30)
          DATA B,C/30*3.0,30*4.0/
          DATA A  /30*0.0/
          DO 1111 I = 1,30
              S1 = B(I) + I
              A(I)=C(I) / S1
              B(I)= C(I) * I
              A(I) =  A(I) + C(I)
 1111     CONTINUE
          PRINT *,A,B
          STOP
          END
