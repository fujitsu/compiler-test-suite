      PROGRAM MAIN
      INTEGER A(10),B(10),C(10),COUNT
      DATA C/99,97,94,90,85,79,72,64,55,45/
      WRITE(6,*)'#### START ####'
      I=0
      DO 10 WHILE (I.LT.10)
        I=I+1
        A(I)=0
   10   B(I)=0
      CALL SUB1(A,C)
      CALL SUB2(B,C)

      I=0
      COUNT=0
      DO 20 WHILE (I.LT.10)
        I=I+1
   20   IF(A(I).EQ.100.AND.B(I).EQ.100) COUNT=COUNT+1
      IF(COUNT.EQ.10) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB1(X,Y)
      INTEGER X(10),Y(10)
      I=0
      DO 20 WHILE (I.LT.10)
        J=0
        I=I+1
        DO 30 WHILE (J.LT.I)
          J=J+1
   30     X(I)=X(I)+J*2
        J=0
        DO 20 WHILE (J.LT.I)
          J=J+1
          X(I)=X(I)-J
   20 CONTINUE
      I=0
      DO 40 WHILE (I.LT.10)
        I=I+1
   40   X(I)=X(I)+Y(I)
      END

      SUBROUTINE SUB2(X,Y)
      INTEGER X(10),Y(10)
      I=0
      DO 20 WHILE (I.LT.10)
        J=0
        I=I+1
        DO 30 WHILE (J.LT.I)
          J=J+1
   30     X(I)=X(I)+J
   20   X(I)=X(I)+Y(I)
      END
