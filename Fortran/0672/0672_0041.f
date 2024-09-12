          COMMON  X1,X2,X3,X4,X5,I1,I2,I3,C1,C2,C3
          COMPLEX*8 C1,C2,C3,C4,C5

          X2 = 2.0
          X3 = 3.0
          X1 = X2 + X3
          Y1 = SIN( X1 )
          X2 = Y1 + Y1

          I1 = 5
          X1 = 2.0
          X2 = X1 ** I1
          X3 = X2 + X3

          C1 = (1.0, 1.0)
          C2 = (2.0, 3.0)
          C3 = C1 / C2
          C2 = C3 + C2

          PRINT *,'OK'
          STOP
          END
