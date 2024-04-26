      EXTERNAL SUBX,SUBY
      COMMON ITM
      ITM =1
      A   =0.5
      X   =3.14159
      CALL SUBA(SUBX,X,A)
      A   =0.5
      X   =X*2.0
      CALL SUBA(SUBY,X,A)
      STOP
      END
      SUBROUTINE SUBA(SUBZ,X,A)
      COMMON ITM
      Y   =X/6.0
      CALL SUBZ(Y)
      DIF =Y-A
      IF(ABS(DIF)-1.0E-5*ABS(A))700,701,701
  700 WRITE(6,103)
      GO TO 900
  701 WRITE(6,102)ITM,Y,A,DIF
  900 ITM =ITM+1
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,9X,
     *E14.7)
  103 FORMAT(1H0,12X,4H*OK*)
      RETURN
      END
      SUBROUTINE SUBX(Z)
      Z   =SIN(Z)
      RETURN
      END
      SUBROUTINE SUBY(Z)
      Z   =COS(Z)
      RETURN
      END
