      PROGRAM MAIN
      INTEGER A,B,RES1,RES2
      WRITE(6,*)'#### START ####'
      CALL SUB(A,B)
      RES1=A**2*B/A+A-B
      RES2=-B+B*A**2/A+A
      IF(RES1.EQ.RES2) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(X,Y)
      INTEGER X,Y
      X=10
      Y=5
      END
