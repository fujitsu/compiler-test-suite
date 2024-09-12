      PROGRAM MAIN
      COMPLEX  A(10,10),B(10,10)
      REAL*8   X(100),Y(100)
      DO 10 I = 1,10
        DO 20 J = 1,10
          A(I,J) = (102.0,405.433) * ( 3.3 , 4.4 )
   20   CONTINUE
   10 CONTINUE
      DO 30 I = 1,10
        DO 40 J = 1,10
          B(J,I) = A(I,J) * 0.5
   40   CONTINUE
   30 CONTINUE
      DO 50 I = 1,100
        X(I) = REAL( A( MOD(I,10)+1,MOD(I,10)+1 ) )
   50 CONTINUE
      DO 60 I = 1,100
        Y(I) = IMAG( B( MOD(I,9)+1,MIN(I,10) ) )
        Y( MOD(I,5)+1 ) = I * I - I
   60 CONTINUE
      PRINT *,A,B,X,Y
      STOP
      END
