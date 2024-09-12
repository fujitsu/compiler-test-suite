      DOUBLE PRECISION I(100),J(100),DIF
      REAL CONS05,CONS06
      WRITE(6,101)
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED,
     *7H RESULT13X,17H- COMPARE VALUE -15X,13H- DIFFERENS -/)
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),7X,D24.17,7X,D24.17,7X,
     *D24.17)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),7X,D24.17,7X,D24.17,7X,
     *D24.17)
  999 FORMAT(1H0/2X,27H*FORTRAN*              EXIT)
      CONS06=1.0E-6
      CONS05=1.0E-5
      N   =32767
      M   =-32767
      K   =38
      L   =-69
      NA  =754
      NB  =0
      I( 1)=3897+21681
      J( 1)=25578
      I( 2)=9678+K
      J( 2)=9716
      I( 3)=K+NA
      J(3)=792
      I( 4)=-7728+(-966)
      J( 4)=-8694
      I( 5)=-8918+L
      J( 5)=-8987
      I( 6)=M+K
      J( 6)=-32729
      I( 7)=0+0
      J( 7)=0
      I( 8)=NB+0
      J( 8)=0
      I( 9)=NB+NB
      J( 9)=0
      I(10)=38-32767
      J(10)=-32729
      I(11)=N-1970
      J(11)=30797
      I(12)=N-K
      J(12)=32729
      I(13)=-32767-(-32767)
      J(13)=0
      I(14)=M-(-98)
      J(14)=-32669
      I(15)=M-L
      J(15)=-32698
      I(16)=0-9988
      J(16)=-9988
      I(17)=12345-NB
      J(17)=12345
      I(18)=NB-NB
      J(18)=0
      I(19)=274*97
      J(19)=26578
      I(20)=K*679
      J(20)=25802
      I(21)=NA*K
      J(21)=28652
      I(22)=-392*(-24)
      J(22)=9408
      I(23)=1*M
      J(23)=-32767
      I(24)=L*K
      J(24)=-2622
      I(25)=0*32767
      J(25)=0
      I(26)=M*0
      J(26)=0
      I(27)=NB*NB
      J(27)=0
      I(28)=32767/198
      J(28)=165
      I(29)=N/19876
      J(29)=1
      I(30)=N/NA
      J(30)=43
      I(31)=-31999/(-99)
      J(31)=323
      I(32)=-18774/L
      J(32)=272
      I(33)=M/L
      J(33)=474
      I(34)=0/4
      J(34)=0
      I(35)=0/M
      J(35)=0
      I(36)=NB/K
      J(36)=0
      NA   =1
      NB   =29
  700 DO 10 NA=NA,NB
      DIF =I(NA)-J(NA)
      IF(J(NA))1,2,1
    1 IF(DABS(DIF)-CONS05*DABS(J(NA)))701,702,702
    2 IF(DABS(DIF)-CONS06)701,702,702
  701 WRITE(6,103)NA,I(NA),J(NA),DIF
      GO TO 10
  702 WRITE(6,102)NA,I(NA),J(NA),DIF
   10 CONTINUE
      IF(NB-36)703,704,704
  703 NA=30
      NB=36
   11 WRITE(6,101)
      GO TO 700
  704 WRITE(6,999)
      STOP
      END
