      PROGRAM MAIN
      REAL*4 A(10)/10*1.0/,B(10)/10*2.4/
      REAL*4 X(10)/10*1.0/,Y(10)/10*2.4/,Z(10)
      REAL*4 T(10),U(10)
      DATA Z/10*0.0/

      DO 10 I=1,10
        A(I) = A(I) + B(I)
        T(I) = 2.0
        U(I) = 5.0
   10 CONTINUE
      PRINT *,A,B
      CALL SUB(T,U)
      PRINT *,T,U
      DO 100 I=1,10
        IF (I.EQ.10) GOTO 200
        Z(I) = X(I) + Y(I)
  100 CONTINUE
  200 CONTINUE
      PRINT *,X,Y,Z
      STOP
      END
      SUBROUTINE SUB(T,U)
      REAL*4 T(10),U(10)
      DO 10 K=1,10
        T(K) = T(K) + U(K)
  10  CONTINUE
      RETURN
      END
