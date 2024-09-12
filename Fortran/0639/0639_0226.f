      REAL*8  B(10),X,Y
      DATA    B/1.D0,2.D0,9.D0,10.D0,3.D0,4.D0,5.D0,7.D0,6.D0,8.D0/

      X   = 0.0D0
      Y   = 0.0D0
      IX1 = 0
      IX2 = 0
      DO 10 I=1,10
        IF(B(I).LT.X) THEN
          X   = B(I)
          IX1 = I
        ENDIF

        IF(B(I).LT.Y) THEN
          Y   = B(I)
          IX2 = I
        ENDIF
  10  CONTINUE
      PRINT *,X,IX1,Y,IX2

      STOP
      END
