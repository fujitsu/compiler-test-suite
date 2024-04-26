      PROGRAM MAIN
      DIMENSION A(10),B(10,10),C(-4:5)
      WRITE(6,*)'#### START ####'
      CALL SUB(A,B,10,10)
      DO 100 I=-4,5
  100   C(I)=10

      TOTAL=0
      DO 200 I=1,10
  200   TOTAL=TOTAL+A(I)
      DO 300 I=1,10
        DO 300 J=1,10
  300     TOTAL=TOTAL+B(I,J)
      DO 400 I=-4,5
  400   TOTAL=TOTAL+C(I)
      IF(TOTAL.EQ.1200) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???',TOTAL
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(X,Y,N,M)
      DIMENSION X(*),Y(N,M)
      DO 10 I=1,10
   10   X(I)=10
      DO 20 I=1,10
        DO 20 J=1,10
   20     Y(I,J)=10
      END
