      PROGRAM MAIN
      REAL RES
      INTRINSIC SQRT
      EXTERNAL SUB3
      WRITE(6,*)'#### START ####'
      CALL SUB1(SQRT,100.0,RES)
      CALL SUB2(SUB3,RES)

      IF(RES.EQ.100.0) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB1(X,Y,Z)
      REAL Y,Z
      Z=X(Y)
      RETURN
      END

      SUBROUTINE SUB2(X,Y)
      REAL P
      EXTERNAL X
      CALL X(P)
      Y=Y+P
      RETURN
      END

      SUBROUTINE SUB3(X)
      REAL X
      X=90.0
      RETURN
      END
