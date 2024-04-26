       INTRINSIC EXP,ALOG,ALOG10,SIN,COS,TANH,SQRT,ATAN,ATAN2
      COMMON Y,X2,ITM
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,9X,
     *E14.7)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,9X,
     *E14.7)
      X   =3.4
      ITM =1
C
    1 CALL SUB(EXP,X)
      ANS =EXP(3.4)
      GO TO 700
C
    2 X   =5.12
      CALL SUB(ALOG,X)
      ANS =ALOG(5.12)
      GO TO 700
C
    3 X   =2.73
      CALL SUB(ALOG10,X)
      ANS =ALOG10(X)
      GO TO 700
C
    4 X   =3.14159/3.0
      CALL SUB(SIN,X)
      ANS =SIN(X)
      GO TO 700
C
    5 X   =3.14159/3.0
      CALL SUB(COS,X)
      ANS =COS(X)
      GO TO 700
C
    6 X   =0.1
      CALL SUB(TANH,X)
      ANS =TANH(X)
      GO TO 700
C
    7 X   =16.0
      CALL SUB(SQRT,X)
      ANS =SQRT(16.0)
      GO TO 700
C
    8 X   =1.2
      CALL SUB(ATAN,X)
      ANS =ATAN(X)
      GO TO 700
C
    9 X   =1.3
      X2  =0.8
      CALL SUB(ATAN2,X)
      ANS =ATAN2(X,X2)
  700 DIF =Y-ANS
      IF(ABS(DIF)-1.0E-06*ABS(ANS))701,702,702
  701 WRITE(6,103)ITM
      GO TO 900
  702 WRITE(6,102)ITM,Y,ANS,DIF
  900 ITM =ITM+1
      GO TO (1,2,3,4,5,6,7,8,9,10),ITM
   10 CONTINUE
      STOP
      END
      SUBROUTINE SUB(F,X)
      COMMON Y,X2,ITM
      IF(ITM-9)1,2,1
    2 Y   =F(X,X2)
      RETURN
    1 Y   =F(X)
      RETURN
      END
