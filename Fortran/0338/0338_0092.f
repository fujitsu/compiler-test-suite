      PROGRAM MAIN
      REAL SQRT
      CHARACTER*11 FUNC
      EXTERNAL PROC,FUNC,BLK,SQRT
      WRITE(6,*)'#### START ####'
      CALL SUB(PROC,FUNC,SQRT)
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB(X,Y,Z)
      REAL Z
      CHARACTER*11 Y
      EXTERNAL X,Y
      CALL X
      WRITE(6,*) Y()
      IF(Z().EQ.10.0) THEN
        WRITE(6,*)'*** OK3 ***'
      ELSE
        WRITE(6,*)'??? NG3 ???'
      ENDIF
      END

      SUBROUTINE PROC
      WRITE(6,*)'*** OK1 ***'
      END

      CHARACTER*11 FUNCTION FUNC()
      FUNC='*** OK2  ***'
      END

      REAL FUNCTION SQRT()
      SQRT=10.0
      END
  
      BLOCK DATA BLK
      END



