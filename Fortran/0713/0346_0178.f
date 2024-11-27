          REAL*4 A(30),B(30,3),C(30,3)
          INTEGER M(30)
          DATA B,C/90*3.0,90*4.0/
          DATA A  /30*0.0/
          DATA M  /30*10/
          S1 = 0.
          S2 = 0.
          J = 1
          DO 1111 I = 1,30
              S1 = S1 + I
              IF( I .LE. 29 ) THEN
                 S2 = S2 + I
                 A(I) = A(I) + I
              ENDIF
              A(I) = B(I,J) + C(I,J) + M(I) + C(I,J)
 1111     CONTINUE
          PRINT *,S1,S2
          PRINT *,A
          STOP
          END
