      DIMENSION J(20),JANS(20),A(20),AANS(20)
      INTEGER*4 JD(20),JDANS(20)
      DOUBLE PRECISION DA(20),DAANS(20),DIFR,DIFI,DCON15,DCON16,DCA,DCB,
     *DCC,DCD,DCE,DCF,DIFA,DIFB,DREAL,DIMAG,DIF
      COMPLEX C(20),CANS(20)
      COMPLEX*16 CD(20),CDANS(20)
  111 FORMAT(1H1/7X,24H*FORTRAN*          ENTER)
  120 FORMAT(1H0/6X,23H- JUSTICE -    - ITEM -,10X,19H- COMPUTED RESULT
     *-,19X,17H- COMPARE VALUE -,19X,14H- DIFFERENCE -)
  121 FORMAT(1H0,7X,4H*OK*,11X,1H(,I2,1H),17X,I12,21X,I12)
  122 FORMAT(1H0,7X,7H*ERROR*,8X,1H(,I2,1H),17X,I12,21X,I12)
  123 FORMAT(1H0,7X,4H*OK*,11X,1H(,I2,1H),14X,E14.7,19X,E14.7,21X,E14.7)
  124 FORMAT(1H0,7X,7H*ERROR*,8X,1H(,I2,1H),14X,E14.7,19X,E14.7,21X,
     *E14.7)
  126 FORMAT(1H0,7X,4H*OK*,11X,1H(,I2,1H),5X,D24.17,10X,D24.17,12X,
     *D24.17)
  127 FORMAT(1H0,7X,7H*ERROR*,8X,1H(,I2,1H),5X,D24.17,10X,D24.17,12X,
     *D24.17)
  128 FORMAT(1H0,25X,3(9X,9HREAL PART,8X,9HIMAG PART))
  129 FORMAT(1H0,7X,4H*OK*,11X,1H(,I2,1H),1X,3(4X,E14.7,3X,E14.7))
  130 FORMAT(1H0,7X,7H*ERROR*,8X,1H(,I2,1H),1X,3(4X,E14.7,3X,E14.7))
  131 FORMAT(1H0,4X,20H_ JUSTICE _ _ ITEM _,17X,19H_ COMPUTED RESULT _,
     *37X,17H_ COMPARE VALUE _)
  132 FORMAT(1H0,35X,9HREAL PART,17X,9HIMAG PART,19X,9HREAL PART,17X,9HI
     *MAG PART)
  133 FORMAT(1H0,7X,4H*OK*,7X,1H(,I2,1H),2X,2(4X,D24.17,2X,D24.17)/66X,
     *14H_ DIFFERENCE _,2(2X,D24.17))
  134 FORMAT(1H0,7X,7H*ERROR*,4X,1H(,I2,1H),2X,2(4X,D24.17,2X,D24.17)/
     *66X,14H_ DIFFERENCE _,2(2X,D24.17))
  141 FORMAT(1H0/5X,11H**INTEGER**)
  142 FORMAT(1H0/5X,18H**DOUBLE INTEGER**)
  143 FORMAT(1H0/5X,8H**REAL**)
  144 FORMAT(1H0/5X,25H**DOUBLE PRECISION REAL**)
  146 FORMAT(1H0/5X,11H**COMPLEX**)
  147 FORMAT(1H0/5X,28H**DOUBLE PRECISION COMPLEX**)
  148 FORMAT(1H1 /)
  149 FORMAT(1H0///7X,23H*FORTRAN*          EXIT)
      CON06=1.0E-06
      CON05=1.0E-05
      DCON16=1.0D-15
      DCON15=1.0D-14
      DCA=0.55555555D6
      DCB=0.1111D-1
      DCC=0.666666D2
      DCD=0.0D0
      DCE=-2.2222222D4
      DCF=3.33D0
      J(1)=10+DCD
      JANS(1)=10
      J(2)=155-DCC
      JANS(2)=88
      J(3)=-2*DCC
      JANS(3)=-133
      J(4)=DCE/2
      JANS(4)=-11111
      J(5)=DCE+7778
      JANS(5)=-14444
      J(6)=0/DCA
      JANS(6)=0
      J(7)=DCE+DCC
      JANS(7)=-22155
      J(8)=123456789-0.123455678D9
      JANS(8)=1111
      J(9)=DCB*222222
      JANS(9)=2468
      J(10)=DCA/50
      JANS(10)=11111
      J(11)=DCF*0
      JANS(11)=0
      J(12)=DCE/10
      JANS(12)=-2222
      WRITE(6,111)
      WRITE(6,120)
      WRITE(6,141)
      DO 15 I=1,12
      IF(J(I)-JANS(I))2,1,2
    1 WRITE(6,121)I,J(I),JANS(I)
      GO TO 15
    2 WRITE(6,122)I,J(I),JANS(I)
   15 CONTINUE
      JD(1)=DCA+4445
      JDANS(1)=560000
      JD(2)=-1-DCA
      JDANS(2)=-555556
      JD(3)=DCF*21000
      JDANS(3)=69930
      JD(4)=DCA/(-5)
      JDANS(4)=-111111
      JD(5)=DCE*(-40)
      JDANS(5)=888888
      JD(6)=DCD*4876
      JDANS(6)=0
      JD(7)=DCE+1234567
      JDANS(7)=1212344
      JD(8)=DCA-435214
      JDANS(8)=120341
      JD(9)=DCD*916735
      JDANS(9)=0
      JD(10)=DCB*4000000
      JDANS(10)=44440
      JD(11)=0.88260482D10/200000
      JDANS(11)=44130
      JD(12)=DCD/450000
      JDANS(12)=0
      WRITE(6,142)
      DO 25 I=1,12
      K=12+I
      IF(JD(I)-JDANS(I))4,3,4
    3 WRITE(6,121)K,JD(I),JDANS(I)
      GO TO 25
    4 WRITE(6,122)K,JD(I),JDANS(I)
   25 CONTINUE
      A(1)=DCE+45
      AANS(1)=-22177.222
      A(2)=DCC-126
      AANS(2)=-59.3334
      A(3)=DCB*4100
      AANS(3)=45.551
      A(4)=DCC/6
      AANS(4)=11.1111
      A(5)=DCD*4845
      AANS(5)=0.0
      A(6)=DCF-6427
      AANS(6)=-6423.67
      A(7)=DCA+123456
      AANS(7)=679011.55
      A(8)=DCD/487625
      AANS(8)=0.0
      A(9)=DCC-3642158
      AANS(9)=-3642091.3334
      A(10)=DCA/55
      AANS(10)=10101.01
      A(11)=DCF*43210
      AANS(11)=143889.3
      A(12)=DCD-54321
      AANS(12)=-54321
      WRITE(6,148)
      WRITE(6,120)
      WRITE(6,143)
      DO 35 I=1,12
      K=24+I
      SIF=A(I)-AANS(I)
      IF(AANS(I))6,5,6
    5 IF(ABS(SIF)-CON06)501,502,502
    6 IF(ABS(SIF)-CON05*ABS(AANS(I)))501,502,502
  501 WRITE(6,123)K,A(I),AANS(I),SIF
      GO TO 35
  502 WRITE(6,124)K,A(I),AANS(I),SIF
   35 CONTINUE
      WRITE(6,144)
      DA(1)=32767+1111.11
      DAANS(1)=33878.11
      DA(2)=DCA-11111
      DAANS(2)=0.54444455D6
      DA(3)=DCC*4000
      DAANS(3)=0.2666664D6
      DA(4)=DCD*4623
      DAANS(4)=0.0
      DA(5)=DCA/50
      DAANS(5)=0.11111111D5
      DA(6)=DCE-32767
      DAANS(6)=-0.54989222D5
      DA(7)=123456+DCA
      DAANS(7)=0.67901155D6
      DA(8)=DCD-483264.5
      DAANS(8)=-483264.5
      DA(9)=DCE*80000
      DAANS(9)=-0.177777776D10
      DA(10)=DCA/10
      DAANS(10)=0.55555555D5
      DA(11)=DCD/4632804
      DAANS(11)=0.0
      DA(12)=DCC+(-487538.765)
      DAANS(12)=-0.4874720834D06
      DO 45 I=1,12
      K=36+I
      DIF=DA(I)-DAANS(I)
      IF(DAANS(I))8,7,8
    7 IF(DABS(DIF)-1.0E-5)503,504,504
    8 IF(DABS(DIF)-1.0E-5*DABS(DAANS(I)))503,504,504
  503 WRITE(6,126)K,DA(I),DAANS(I),DIF
      GO TO 45
  504 WRITE(6,127)K,DA(I),DAANS(I),DIF
   45 CONTINUE
      WRITE(6,148)
      WRITE(6,120)
      WRITE(6,128)
      WRITE(6,146)
      C(1)=DCC+1111
      CANS(1)=(1177.6666,0.0)
      C(2)=DCD-12684
      CANS(2)=(-12684.0,0.0)
      C(3)=DCF*10000
      CANS(3)=(33300.0,0.0)
      C(4)=DCD*8264
      CANS(4)=(0.0,0.0)
      C(5)=DCC/6
      CANS(5)=(11.1111,0.0)
      C(6)=DCE-1
      CANS(6)=(-22223.222,0.0)
      C(7)=DCA+121212
      CANS(7)=(676767.55,0.0)
      C(8)=DCB-1234567
      CANS(8)=(-1234566.98889,0.0)
      C(9)=DCD*48283
      CANS(9)=(0.0,0.0)
      C(10)=DCE+100000
      CANS(10)=(77777.778,0.0)
      C(11)=DCD/482645
      CANS(11)=(0.0,0.0)
      C(12)=DCD-12843.146
      CANS(12)=(-12843.146,0.0)
      DO 55 I=1,12
      K=48+I
      SIFR=REAL(C(I))-REAL(CANS(I))
      SIFI=AIMAG(C(I))-AIMAG(CANS(I))
      IF(AIMAG(CANS(I)))506,9,506
    9 IF(SIFI)506,11,506
   11 IF(REAL(CANS(I)))10,13,10
   10 SIFA=ABS(SIFR)
      SIFB=CON05*ABS(REAL(CANS(I)))
      IF(SIFA-SIFB)505,506,506
   13 IF(ABS(SIFR)-CON06)505,506,506
  505 WRITE(6,129)K,C(I),CANS(I),SIFR,SIFI
      GO TO 55
  506 WRITE(6,130)K,C(I),CANS(I),SIFR,SIFI
   55 CONTINUE
      WRITE(6,148)
      WRITE(6,131)
      WRITE(6,132)
      WRITE(6,147)
      CD(1)=DCA+15
      CDANS(1)=(555570.55D0,0.0D0)
      CD(2)=DCC-40
      CDANS(2)=(26.6666D0,0.0D0)
      CD(3)=DCE-8888
      CDANS(3)=(-31110.222D0,0.0D0)
      CD(4)=DCF*30000
      CDANS(4)=(99900.0D0,0.0D0)
      CD(5)=DCA/(-1)
      CDANS(5)=(-555555.5D0,0.0D0)
      CD(6)=DCD*4832
      CDANS(6)=(0.0D0,0.0D0)
      CD(7)=DCA+554433
      CDANS(7)=(1109988.55D0,0.0D0)
      CD(8)=DCE-496321
      CDANS(8)=(-518543.222D0,0.0D0)
      CD(9)=DCD*486923
      CDANS(9)=(0.0D0,0.0D0)
      CD(10)=DCD/412324
      CDANS(10)=(0.0D0,0.0D0)
      CD(11)=DCC*100000
      CDANS(11)=(6666660.D0,0.0D0)
      CD(12)=DCB-168358
      CDANS(12)=(-168358.01111D0,0.0D0)
      DO 65 I=1,12
      K=60+I
      DIFR=DREAL(CD(I))-DREAL(CDANS(I))
      DIFI=DIMAG(CD(I))-DIMAG(CDANS(I))
      IF(DIMAG(CDANS(I)))508,99,508
   99 IF(DIFI)508,17,508
   17 IF(DREAL(CDANS(I)))18,19,18
   18 IF(DABS(DIFR)-1.0D-5*DABS(DREAL(CDANS(I))))507,508,508
   19 IF(DABS(DIFR)-1.0D-5)507,508,508
  507 WRITE(6,133)K,CD(I),CDANS(I),DIFR,DIFI
      GO TO 65
  508 WRITE(6,134)K,CD(I),CDANS(I),DIFR,DIFI
   65 CONTINUE
      WRITE(6,149)
      STOP
      END
      DOUBLE PRECISION FUNCTION DREAL(C)
      COMPLEX*16 C,CC
      DOUBLE PRECISION D(2),DIMAG
      EQUIVALENCE (CC,D(1))
      CC=C
      DREAL=D(1)
      RETURN
      ENTRY DIMAG(C)
      CC=C
      DIMAG=D(2)
      RETURN
      END
