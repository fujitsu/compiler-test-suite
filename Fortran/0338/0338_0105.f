      PROGRAM MAIN
      INTEGER A(5),B(5),C
      DATA A/10,20,30,40,50/
      DATA B/50,40,30,20,10/
      C=0
      WRITE(6,*)'#### START ####'
      DO 10 I=1,5
        IF(A(I).EQ.B(I)) C=A(I)
        IF(C.EQ.B(I)) CALL SUB(C)
        IF(C.NE.A(I)) C=0
   10 CONTINUE
      IF(C.EQ.0) GO TO 20
      WRITE(6,*)'??? NG ???'
   20 WRITE(6,*)'*** OK2 ***'
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(X)
      INTEGER X
      IF(X.NE.30) RETURN
      WRITE(6,*)'*** OK1 ***'
      END
