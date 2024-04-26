      REAL     B(11)
      DATA     B/11*0.5/
      X = 0.
      Y = 0.

      DO 10 I = 1 , 10
         X    = B(I) + X
         Y    = B(I) + Y
   10 CONTINUE
      PRINT  *,X,Y
      STOP
      END
