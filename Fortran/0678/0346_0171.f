          REAL*4 A(200),B(300),C(300),XX(300)
          DATA B,C/300*3.0,300*4.0/
          DATA A  /200*0.0/
          S1 = 0.
          S2 = 0.
          DO 1111 I = 1,300
              S1 = S1 + I
              IF( I .LE. 200 ) THEN
                 S2 = S2 + I
                 A(I) = A(I) + I
              ENDIF
              XX(I) = B(I) + C(I) + B(I) + C(I)
 1111     CONTINUE
          PRINT *,S1,S2
          PRINT *,A,XX
          STOP
          END
