      REAL     B(11)
      DATA     B/11*1.0  /
      X = 0.
      Y = 0.

      DO 10 I = 1 , 10
        IF( I .LE. 5 ) THEN
            X    = B(I) + X
            Y    = B(I) + Y
        ENDIF
   10 CONTINUE
      PRINT  *,X,Y
      STOP
      END
