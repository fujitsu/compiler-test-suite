      REAL     A(11),B(11),C(11)
      DATA     A,B,C/11*1.0,11*0.5,11*3.0/
      X = 0.
      Y = 0.
      Z = 0.
      W = 0.

      DO 10 I = 1 , 10
        IF( I .LE. 5 ) THEN
            X    = B(I) + X
            Y    = B(I) + Y
        ELSE
            Z    = C(I) + Z
            W    = C(I) + W
        ENDIF
   10 CONTINUE
      PRINT  *,X,Y,Z,W
      STOP
      END
