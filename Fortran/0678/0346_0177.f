          REAL*4 A(30),B(30,3),C(30,3)
          DATA B,C/90*3.0,90*4.0/
          DATA A  /30*330.0/
          J = 1
          DO 1111 I = 1,30
              A(I) = B(I,J) / C(I,J) / A(I) / C(I,J)
 1111     CONTINUE
          PRINT *,A
          STOP
          END
