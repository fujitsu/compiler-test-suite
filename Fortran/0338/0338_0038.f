      PROGRAM MAIN
      INTEGER ARR1(2),ARR2(1:2),ARR3(2)
      WRITE(6,*)'#### START ####'
      CALL SUB(ARR1,ARR2,ARR3,2)
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(X,Y,Z,N)
      INTEGER X(2),Y(1:*),Z(N),TOTAL
      X(1)=100
      X(2)=100
      Y(1)=100
      Y(2)=100
      Z(1)=100
      Z(N)=100
      TOTAL=X(1)+X(2)+Y(1)+Y(2)+Z(1)+Z(N)
      IF(TOTAL.EQ.600) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      END
