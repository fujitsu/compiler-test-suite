      EXTERNAL FUNC1,FUNC2
      X   =3.141592/3.0
      ANS =3.096622
      ITM =1
      CALL SUBA(FUNC1,X,ANS,ITM)
      ANS =0.5*SQRT(3.0)/2.0
      CALL SUBA(FUNC2,X,ANS,ITM)
      STOP
      END
      SUBROUTINE SUBA(F,X,ANS,ITM)
      Y   =F(X)
      DIF =F(X)-ANS
      IF (ABS(DIF)-1.0E-5*ABS(ANS))700,701,701
  700 CONTINUE
      GO TO 900
  701 WRITE(6,102)ITM,Y,ANS,DIF
  900 ITM =ITM+1
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,9X,
     *E14.7)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,9X,
     *E14.7)
      RETURN
      END
      FUNCTION FUNC1(X)
      FUNC1=X**2+2.0
      RETURN
      END
      FUNCTION FUNC2(X)
      FUNC2=SIN (X)*COS(X)
      RETURN
      END
