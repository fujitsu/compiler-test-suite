      PROGRAM MAIN
      REAL PAR,A,B,FUN1,FUN2,TOTAL,AVE
      PARAMETER (PAR=10.0)
      EXTERNAL FUN2
      TOTAL(X,Y)=10.0+PAR+FUN1(X,FUN2)+Y
      AVE(X,Y)=TOTAL(X,Y)/SQRT(16.0)
      WRITE(6,*)'#### START ####'
      A=10.0
      B=AVE(5.0,A)

      IF(B.EQ.10.0) THEN
        WRITE(6,*)'*** OK ***'
      ELSE
        WRITE(6,*)'??? NG ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END

      REAL FUNCTION FUN1(X,Y)
      REAL X,Y,Z
      EXTERNAL Y
      BUN(Z)=Y(Z)
      FUN1=BUN(X)
      END

      REAL FUNCTION FUN2(X)
      FUN2=X+5.0
      END
