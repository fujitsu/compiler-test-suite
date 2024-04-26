      DIMENSION A(10),B(5,5)
C
      WRITE(6,101)
  101 FORMAT(1H0 // 10X,40H- JUSTICE -     - ITEM -      - COMPUTED,
     *58H RESULT -          - COMPARE VALUE -        - DIFFERENCE -)
C
C
      A(1) =3.0
      ANS  =3.0
      ITM  =01
      DIF  =A(1)-ANS
      IF(ABS(DIF)-1.0E-05)2,1,1
    1 WRITE(6,102)ITM,A(1),ANS,DIF
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,8X,
     *E14.7)
      GO TO 500
    2 WRITE(6,103)ITM
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ))
C
C
  500 A(2) =0.4E-01
      ANS  =0.4E-01
      ITM  =ITM+1
      DIF  =A(2)-ANS
      IF(ABS(DIF)-1.0E-05)4,3,3
    3 WRITE(6,102)ITM,A(2),ANS,DIF
      GO TO 501
    4 WRITE(6,103)ITM
C
      B(1,4)=-0.5E 01
C
  501 A(10) =A(1)**2+6.0*A(2)
      ANS   =9.24
      ITM   =ITM+1
      DIF   =A(10)-ANS
      IF(ABS(DIF)-1.0E-05)6,5,5
    5 WRITE(6,102)ITM,A(10),ANS,DIF
      GO TO 502
    6 WRITE(6,103)ITM
C
C
  502 B(1,1) =5.2
      ANS    =5.2
      ITM    =ITM+1
      DIF    =B(1,1)-ANS
      IF(ABS(DIF)-1.0E-05)8,7,7
    7 WRITE(6,102)ITM,B(1,1),ANS,DIF
      GO TO 503
    8 WRITE(6,103)ITM
C
C
  503 B(1,2)=0.5E 01
      ANS   =0.5E 01
      ITM   =ITM+1
      DIF   =B(1,2)-ANS
      IF(ABS(DIF)-1.0E-05)10,9,9
    9 WRITE(6,102)ITM,B(1,2),ANS,DIF
      GO TO 504
   10 WRITE(6,103)ITM
C
C
  504 B(5,5)=B(1,1)*A(2)+B(1,2)
      ANS   =5.208
      ITM   =ITM+1
      DIF   =B(5,5)-ANS
      IF(ABS(DIF)-1.0E-05)12,11,11
   11 WRITE(6,102)ITM,B(5,5),ANS,DIF
      GO TO 505
   12 WRITE(6,103)ITM
C
C
  505 A(7)  =-0.5
      A(6)  =A(7)*2.5
      ANS=-1.25
      ITM   =ITM+1
      DIF   =A(6)-ANS
      IF(ABS(DIF)-1.0E-05)14,13,13
   13 WRITE(6,102)ITM,A(6),ANS,DIF
      GO TO 506
   14 WRITE(6,103)ITM
C
C
  506 B(1,3)=B(1,4)/2.5
      ANS   =-2.0
      ITM   =ITM+1
      DIF   =B(1,3)-ANS
      IF(ABS(DIF)-1.0E-05)16,15,15
   15 WRITE(6,102)ITM,B(1,3),ANS,DIF
      GO TO 507
   16 WRITE(6,103)ITM
  507 CONTINUE
      STOP
      END
