          COMMON  I1, I3, I5

          N1 = 1
          N2 = 2
          N3 = 3
          P1 = 1.0
          P2 = 2.0
          P3 = 3.0
          X = 0.0
          Y = 0.0
          A1 = 0.0
          A2 = 0.0
          I1 = 0
          I2 = 0
          I3 = 0
          I4 = 0
          I5 = 0
          I6 = 0
          I7 = 0
          I8 = 0
          I9 = 0
          I10 = 0
          
          DO 100 I= 1, 100
          Q1 = Y + 1.0
          Q2 = A1 + 2.0
          Q3 = Y + 3.0
          Q4 = A2 + 4.0
          N1 = I1 + I2
          N2 = I3 + I4
          N3 = I5 + I6
          N4 = I7 + I8
          N5 = I9 + I10
          Y = EXP( X )
          Q5 = A1 + 5.0
          Q6 = A2 + 6.0
          N6 = I1 - I10
          N7 = I2 - I9
          N8 = I3 - I8
          N9 = I4 - I7
          N10 = I5 - I6
          N11 = I5 + I5
          X = X + 0.1
  100     CONTINUE

          WRITE( 6, 900 ) Y
  900     FORMAT( 1H1, //// , E20.7 )

          STOP
          END
