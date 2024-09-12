      PROGRAM MAIN
      INTEGER X(10),Y(10),Z(10)/10*0/
      DO 10 I = 1,10
        X(I) = I
   10   Y(I) = I*I
      CALL SUB(X,Y,Z,X)
      PRINT *,X,Y,Z
      STOP
      END
      SUBROUTINE SUB(A,B,C,D)
      INTEGER A(10),B(10),C(10),D(10)
      DO 10 I=2,10
   10   A(I) = B(I)
      DO 20 I=2,10
   20   C(I) = A(I-1)
      RETURN
      END
