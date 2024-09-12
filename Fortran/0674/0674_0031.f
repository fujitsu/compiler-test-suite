      PROGRAM MAIN
      REAL*4 A(10)/10*1.0/,B(10)/10*2.4/
      REAL*4 X(10)/10*1.0/,Y(10)/10*2.4/,Z(10)

      DO 10 I=1,10
        A(I) = A(I) + B(I)
        DO 10 J=1,10
          B(J) = 1.0
   10 CONTINUE
      PRINT *,A,B
      DO 100 I=1,10
        Z(I) = X(I) + Y(I)
        DO 100 J=1,10
          X(J) = 1.0
  100 CONTINUE
      PRINT *,X,Y,Z
      STOP
      END
