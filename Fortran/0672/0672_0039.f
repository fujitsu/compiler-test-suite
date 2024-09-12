          COMMON  I1, I3, I5
          P1 = 1.0
          P2 = 2.0
          P3 = 3.0
          N1 = 1
          N2 = 2
          N3 = 3
          N4 = 0
          N5 = 0
          N6 = 0
          X= 0.0

          DO 100 I = 1, 100
          I1 = N1 + 1
          I2 = N2 + 2
          I3 = N3 + 3
          I4 = N4 + 4
          I5 = N5 + 5
          I6 = N6 + 6
          A1 = P1 + 1.0
          A2 = P2 + 2.0
          A3 = P3 + 3.0
          X = X + 0.1
          Y = EXP( X )
          N1 = I1 + 1
          N2 = I2 + 2
          N3 = I3 + 3
          N4 = I4 + 4
          N5 = I5 + 5
          N6 = I6 + 6
          P1 = A1 + 1.0
          P2 = A2 + 2.0
          P3 = A3 + 3.0
          P4 = Y + 1.0
          P5 = X + 2.0
          P6 = Y + 3.0
          X = X + 0.1
  100     CONTINUE

          WRITE( 6, 900 ) Y
  900     FORMAT( 1H1,/////, E20.7  )
          STOP
          END
