      PROGRAM MAIN
      INTEGER  X(20),Y(20),A(10),B(10)
      DATA N/10/,M/3/,X/20*0/,Y/20*0/
      DO 10 I = 1,N
        X(I) = I*I
   10   Y(I+N) = X(I)
      DO 20 I = 1,N
        A(I) = X(I+1)
   20   B(I) = Y(I)
      PRINT *,A,B,X,Y
      STOP
      END
