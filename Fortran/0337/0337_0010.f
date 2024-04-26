      DIMENSION B(10),F(5,5)
C
      WRITE(6,101)
  101 FORMAT(1H0 // 10X,40H- JUSTICE -     - ITEM -      - COMPUTED,
     *58H RESULT -          - COMPARE VALUE -        - DIFFERENCE -)
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,8X,
     *E14.7)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ))
      B(1)  =2.0
      B(2)  =3.0
      P     =1.0
      Q     =2.0
      I     =1
      J     =2
      K     =3
      F(1,1)=4.0
      F(1,2)=5.0
      F(1,3)=2.8
C
      ITM   =01
      B(4)  =2.5*B(1)
      ANS   =5.0
      DIF   =B(4)-ANS
      IF(ABS(DIF)-1.0E-05)2,1,1
    1 WRITE(6,102)ITM,B(4),ANS,DIF
      GO TO 500
    2 WRITE(6,103)ITM
C
C
  500 ITM   =ITM+1
      B(5)  =4.4/B(I)
      ANS   =2.2
      DIF   =B(5)-ANS
      IF(ABS(DIF)-1.0E-05)4,3,3
    3 WRITE(6,102)ITM,B(5),ANS,DIF
      GO TO 501
    4 WRITE(6,103)ITM
C
C
  501 ITM   =ITM+1
      B(6)  =B(I+1)**2
      ANS   =9.0
      DIF   =B(6)-ANS
      IF(ABS(DIF)-1.0E-05)6,5,5
    5 WRITE(6,102)ITM,B(6),ANS,DIF
      GO TO 502
    6 WRITE(6,103)ITM
C
C
  502 ITM   =ITM+1
      B(7)  =B(K-2)*4.2
      ANS   =8.4
      DIF   =B(7)-ANS
      IF(ABS(DIF)-1.0E-05)8,7,7
    7 WRITE(6,102)ITM,B(7),ANS,DIF
      GO TO 503
    8 WRITE(6,103)ITM
C
C
  503 ITM   =ITM+1
      B(8)  =-1.5*B(1*J)
      ANS   =-4.5
      DIF   =B(8)-ANS
      IF(ABS(DIF)-1.0E-05)10,9,9
    9 WRITE(6,102)ITM,B(8),ANS,DIF
      GO TO 504
   10 WRITE(6,103)ITM
C
C
  504 ITM   =ITM+1
      B(9)  =6.3/B(1*I+1)
      ANS   =2.1
      DIF   =B(9)-ANS
      IF(ABS(DIF)-1.0E-05)12,11,11
   11 WRITE(6,102)ITM,B(9),ANS,DIF
      GO TO 505
   12 WRITE(6,103)ITM
C
C
  505 ITM   =ITM+1
      B(10) =3.2*B(3*J-4)
      ANS   =9.6
      DIF   =B(10)-ANS
      IF(ABS(DIF)-1.0E-05)14,13,13
   13 WRITE(6,102)ITM,B(10),ANS,DIF
      GO TO 506
   14 WRITE(6,103)ITM
C
C
  506 ITM   =ITM+1
      F(4,1)=Q*F(1,3)
      ANS   =5.6
      DIF   =F(4,1)-ANS
      IF(ABS(DIF)-1.0E-05)16,15,15
   15 WRITE(6,102)ITM,F(4,1),ANS,DIF
      GO TO 507
   16 WRITE(6,103)ITM
C
C
  507 ITM   =ITM+1
      F(4,2)=B(1)*F(I,J)+0.5
      ANS   =10.5
      DIF   =F(4,2)-ANS
      IF(ABS(DIF)-1.0E-04)18,17,17
   17 WRITE(6,102)ITM,F(4,2),ANS,DIF
      GO TO 508
   18 WRITE(6,103)ITM
C
C
  508 ITM   =ITM+1
      F(4,3)=24.4/F(I,I+1)
      ANS   =4.88
      DIF   =F(4,3)-ANS
      IF(ABS(DIF)-1.0E-05)20,19,19
   19 WRITE(6,102)ITM,F(4,3),ANS,DIF
      GO TO 509
   20 WRITE(6,103)ITM
C
C
  509 ITM   =ITM+1
      F(4,4)=Q*F(K-2,3)/0.4
      ANS   =14.0
      DIF   =F(4,4)-ANS
      IF(ABS(DIF)-1.0E-05)22,21,21
   21 WRITE(6,102)ITM,F(4,4),ANS,DIF
      GO TO 510
   22 WRITE(6,103)ITM
C
C
  510 ITM   =ITM+1
      F(4,5)=F(I,3*I)*0.3-0.43
      ANS   =0.41
      DIF   =F(4,5)-ANS
      IF(ABS(DIF)-1.0E-05)24,23,23
   23 WRITE(6,102)ITM,F(4,5),ANS,DIF
      GO TO 511
   24 WRITE(6,103)ITM
C
C
  511 ITM   =ITM+1
      F(5,1)=F(I,2*I+1)/0.7*3.4E-01
      ANS   =1.36
      DIF   =F(5,1)-ANS
      IF(ABS(DIF)-1.0E-05)26,25,25
   25 WRITE(6,102)ITM,F(5,1),ANS,DIF
      GO TO 512
   26 WRITE(6,103)ITM
C
C
  512 ITM   =ITM+1
      F(5,2)=5.2*F(5*K-14,J)*0.7
      ANS   =18.2
      DIF   =F(5,2)-ANS
      IF(ABS(DIF)-1.0E-04)28,27,27
   27 WRITE(6,102)ITM,F(5,2),ANS,DIF
      GO TO 513
   28 WRITE(6,103)ITM
C
C
  513 ITM   =ITM+1
      F(5,3)=P*F(K-2,I+2)+0.3
      ANS   =3.1
      DIF   =F(5,3)-ANS
      IF(ABS(DIF)-1.0E-05)30,29,29
   29 WRITE(6,102)ITM,F(5,3),ANS,DIF
      GO TO 514
   30 WRITE(6,103)ITM
C
C
  514 ITM   =ITM+1
      F(5,4)=2.6/F(J-1,2*I)*1.1
      ANS   =0.572
      DIF   =F(5,4)-ANS
      IF(ABS(DIF)-1.0E-05)32,31,31
   31 WRITE(6,102)ITM,F(5,4),ANS,DIF
      GO TO 515
   32 WRITE(6,103)ITM
C
  515 ITM   =ITM+1
      F(5,5)=B(2)*F(4*J-7,2*I+1)
      ANS   =8.4
      DIF   =F(5,5)-ANS
      IF(ABS(DIF)-1.0E-05)34,33,33
   33 WRITE(6,102)ITM,F(5,5),ANS,DIF
      GO TO 516
   34 WRITE(6,103)ITM
  516 CONTINUE
      STOP
      END
