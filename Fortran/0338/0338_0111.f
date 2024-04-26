      PROGRAM MAIN
      INTEGER A(10)
      WRITE(6,*)'#### START ####'
      DO 10 I=1,10
        A(I)=100
   10   CONTINUE
      IF(A(5).EQ.100) CONTINUE
      IF(A(5).EQ.100) THEN
        CONTINUE
        CALL SUB
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB
      CONTINUE
      END
