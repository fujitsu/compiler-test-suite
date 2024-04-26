      PROGRAM MAIN
      REAL A,B,FUN1,FUN2,FUN3
      INTRINSIC SQRT
      EXTERNAL FUN3
      WRITE(6,*)'#### START ####'
      A=FUN1(SQRT,10000.0)
      B=FUN2(FUN3)

      IF(A.EQ.100.0.AND.B.EQ.100.0) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      REAL FUNCTION FUN1(X,Y)
      REAL Y
      FUN1=X(Y)
      END

      REAL FUNCTION FUN2(ARG)
      REAL ARG
      EXTERNAL ARG
      FUN2=ARG()
      END

      REAL FUNCTION FUN3()
      FUN3=100.0E0
      END
