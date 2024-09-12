          DATA Pi / 3.14159265 /
          X = Pi * 0.23
          Y = SIN(X)**2 + COS(X)**2
          WRITE( 6, 100 ) Y
  100     FORMAT( 1H1, ////, E20.7  )
          STOP
          END
