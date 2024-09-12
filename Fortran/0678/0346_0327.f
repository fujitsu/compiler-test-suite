      PROGRAM MAIN
      REAL     A(10),B(10),C(10)
      DATA     A,B,C/10*1.0,10*2.0,10*3.0/

      S = 0.0
      DO 10 I=1,10
        S = S + A(I)
   10 CONTINUE
      PRINT  *,S

      DO 20 I=1,10
        IF(S.LE.9) THEN
          GO TO 20
        ENDIF
        A(I) = B(I) + S
   20 CONTINUE
      PRINT  *,A

      DO 30 I=1,10
        X = B(I)
        Y = C(I)
        IF(S.GT.1.0) THEN
          GO TO 30
        ENDIF
        A(I) = X + Y
   30 CONTINUE
      PRINT  *,A
      STOP
      END
