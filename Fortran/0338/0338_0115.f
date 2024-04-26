      PROGRAM MAIN
      INTEGER A(10),B(10),C
      EXTERNAL SUB2
      INTRINSIC SQRT
      WRITE(6,*)'#### START ####'
      DO 10 I=1,10
        C=100
   10   CALL SUB1(A(I),B,C,I,SQRT,SUB2)
      CALL CHECK(A,B)
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB1(A,B,C,N,ROOT,XXX)
      INTEGER A,B(N),C
      A=C
      CALL XXX(A,B(N),ROOT)
      END

      SUBROUTINE SUB2(A,B,ROOT)
      REAL PARAM
      INTEGER A,B
      PARAM=A
      B=ROOT(PARAM)
      END

      SUBROUTINE CHECK(A,B)
      INTEGER A(10),B(10),COUNT
      COUNT=0
      DO 10 I=1,10
        IF(A(I).EQ.100) THEN
          IF(A(I).EQ.B(I)**2) COUNT=COUNT+1
        ENDIF
   10   CONTINUE
      IF(COUNT.EQ.10) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      END
