      PROGRAM MAIN
      REAL*4 A(10,10)/100*8.4/,X/4.0/
      DO 10 J=1,10
        DO 20 I=1,10
          IF( I.LT.6 ) THEN
            A(I,J) = A(I,J) - X
          ELSE
            A(I,J) = A(I,J) + X
          ENDIF
   20   CONTINUE
   10 CONTINUE
      PRINT *,A
      STOP
      END
