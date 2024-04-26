      PROGRAM MAIN
      DIMENSION M(5,5,5,5,5,5,5)
      INTEGER A(-5:5,10-9:10),B(10),TOTAL
      WRITE(6,*)'#### START ####'
      M(1,1,1,1,1,1,1)=100
      M(5,5,5,5,5,5,5)=100
      A(-5,1)=100
      A(5,10)=100
      B(1)=100
      B(10)=100
      TOTAL=M(1,1,1,1,1,1,1)+M(5,5,5,5,5,5,5)
      TOTAL=TOTAL+A(-5,1)+A(5,10)+B(1)+B(10)
      IF(TOTAL.EQ.600) THEN
        WRITE(6,*)'*** OK1 ***'
      ELSE
        WRITE(6,*)'??? NG1 ???'
      ENDIF
      CALL SUB(A)
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(X)
      INTEGER X(-5:5,1:*),TOTAL
      X(-5,1)=10
      X(5,10)=10
      TOTAL=X(-5,1)+X(5,10)
      IF(TOTAL.EQ.20) THEN
        WRITE(6,*)'*** OK2 ***'
      ELSE
        WRITE(6,*)'??? NG2 ???'
      ENDIF
      END



