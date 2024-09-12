      INTEGER  DIZC
      INTEGER  DI,DJ,IK,IL,IM,IN,JJ,JK,JL,JM,JN,MM,NN,ID,LL
      DOUBLE PRECISION  S,T,DIFD,DCNT
      DIMENSION I(20),J(20),DI(20),DJ(20),A(40),B(40),S(40),T(40)
  100 FORMAT(1H1/2X,29H*FORTRAN*               ENTER)
  101 FORMAT(1H0 //10X,44H- JUSTICE -     - ITEM -          - COMPUTED,
     *7H RESULT13X,17H- COMPARE VALUE -15X,14H- DIFFERENCE -)
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( I2,2H )12X,I12,14X,I12)
  103 FORMAT(1H0,12X,4H*OK* 10X,2H( I2,2H )12X,I12,14X,I12)
  104 FORMAT(1H0,12X,7H*ERROR*,7X,2H( I2,2H )7XE14.7,17XE14.7,17XE14.7)
  105 FORMAT(1H0,12X,4H*OK*10X,2H( I2,2H )7X,E14.7,17X,E14.7,17X,E14.7)
  106 FORMAT(1H0,12X,7H*ERROR*7X2H( I2,2H )7XD24.17,7XD24.17,7X,D24.17)
  107 FORMAT(1H0,12X,4H*OK*10X,2H( I2,2H )7X,D24.17,7XD24.17,7X,D24.17)
  120 FORMAT(1H1,5X)
  999 FORMAT(1H0/2X28H*FORTRAN*               EXIT)
      WRITE(6,100)
      WRITE(6,101)
      DIZC=1
      ID =999999999
      LD =-2
      IR =9
      JJ =16
      KK =2
      LL =-2
      MM =1
      NN =0
      IQ =-1000
      IK =3
      IL =7
      IM =8
      IN =-1
      JK =-7
      JL =-8
      JM =-6
      JN =9
      DCNT  =1.0D-15
      AB =1.0E-5
      I( 1)=123456**(-8)
      J( 1)=0
      I(2)=NN**IR
      J( 2)=0
      I(3)=JM**0
      J(3)=1
      I(4)=16**IK
      J(4)=4096
      I(5)=(-16)**NN
      J(5)=MM
      I(6)=KK**8
      J( 6)=256
      I( 7)=MM**ID
      J( 7)=MM
      I(8)=JL**MM
      J(8)=-8
      I( 9)=IQ**NN
      J( 9)=MM
      I(10)=NN*ID
      J(10)=NN
      DI(11)=1000**(-IK)
      DJ(11)=0
      DI(12)=LD**NN
      DJ(12)=MM
      DI(13)=0**ID
      DJ(13)=NN
      DI(14)=JN**0
      DJ(14)=MM
      DI(15)=-876543210**1
      DJ(15)=-876543210
      DI(16)=NN**IR
      DJ(16)=NN
      DI(17)=ID**MM
      DJ(17)=999999999
      DI(18)=ID**JM
      DJ(18)=0
      DI(19)=NN**IL
      DJ(19)=0
      A(20)=9**(-2)
      B(20)=0.0E0
      A(21)=LD**0
      B(21)=1.0E0
      A(22)=0**JJ
      B(22)=NN
      A(23)=0**IK
      B(23)=0
      A(24)=JL**LD
      B(24)=0
      A(25)=NN**IR
      B(25)=0.0
      A(26)=JJ**LL
      B(26)=0.0
      A(27)=JM**(-IK)
      B(27)=0.0
      A(28)=NN**JN
      B(28)=0.0
      S(29)=9**(-2)
      T(29)=0.0
      S(30)=LD**0
      T(30)=0.1D1
      S(31)=(DIZC*IQ)**2
      T(31)=1000000
      S(32)=ID**0
      T(32)=MM
      S(33)=NN**IK
      T(33)=0.0D0
      S(34)=JM**JK
      T(34)=0.0D0
      S(35)=0**JJ
      T(35)=0.0D0
      S(36)=JL**IN
      T(36)=0.0D0
      S(37)=NN**IL
      T(37)=0.0D0
      DO 10 II=1,10
      IF(I(II)-J(II))1,2,1
    1 WRITE(6,102)II,I(II),J(II)
      GO TO 10
    2 WRITE(6,103)II,I(II),J(II)
   10 CONTINUE
      DO  511  II=11,19
      IF(DI(II)-DJ(II))51,52,51
   51 WRITE(6,102)II,DI(II),DJ(II)
      GO TO 511
   52 WRITE(6,103)II,DI(II),DJ(II)
  511 CONTINUE
      DO 11 II=20,28
      DIF =A(II)-B(II)
      IF(B(II))3,4,3
    3 IF(ABS(DIF)-AB*ABS(B(II)))5,6,6
    4 IF(ABS(DIF)-AB)5,6,6
    5 WRITE(6,105)II,A(II),B(II),DIF
      GO TO 11
    6 WRITE(6,104)II,A(II),B(II),DIF
   11 CONTINUE
      WRITE(6,120)
      WRITE(6,101)
      DO 12 II=29,37
      DIFD =S(II)-T(II)
      IF(T(II))7,8,7
    7 IF(DABS(DIFD)-DCNT*DABS(T(II)))700,701,701
    8 IF(DABS(DIFD)-DCNT)700,701,701
  700 WRITE(6,107)II,S(II),T(II),DIFD
      GO TO 12
  701 WRITE(6,106)II,S(II),T(II),DIFD
   12 CONTINUE
  736 WRITE(6,999)
      STOP
      END
