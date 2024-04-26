      PROGRAM MAIN
      INTEGER*4 A(10),B(5),C(10)
      COMMON /COM/D(10)
      EQUIVALENCE (A(6),B(1))
      DATA C/1,2,3,4,5,6,7,8,9,10/
      WRITE(6,*)'#### START ####'
      CALL SUB(0)
      CALL SUB(1)
      DO 10 I=1,10
   10   D(I)=C(I)
      DO 20 I=1,10
   20   A(I)=D(I)
      IF(B(5).EQ.10) THEN
        WRITE(6,*)'*** OK2 ***'
      ELSE
        WRITE(6,*)'??? NG2 ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(N)
      INTEGER X(10)
      SAVE X
      IF(N.EQ.0) THEN
        X(5)=10
      ELSE
        IF(X(5).EQ.10) THEN
          WRITE(6,*)'*** OK1 ***'
        ELSE
          WRITE(6,*)'??? NG1 ???'
        ENDIF
      ENDIF
      END
