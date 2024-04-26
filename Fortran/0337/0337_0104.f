      COMPLEX A(50),B(50),AC,DC,HF,LF
      REAL LMA,KBL
      WRITE(6,101)
      WRITE(6,106)
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED,
     *7H RESULT13X,17H- COMPARE VALUE -15X,13H- DIFFERENS -)
  102 FORMAT(1H0,8X,15H*ERROR* *ERROR*,3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  103 FORMAT(1H0,11X,12H*OK*    *OK*,3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  104 FORMAT(1H0,8X,15H*ERROR*    *OK*,3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  105 FORMAT(1H0,11X,12H*OK* *ERROR*,3X,2H( ,I2,2H ),5X,2E14.7,
     *2(3X,2E14.7))
  106 FORMAT(1H0,11X,12HREAL    IMAG,6X,3(13X,4HREAL,10X,4HIMAG)/)
      AC  =(7.2,4.3)
      DC  =(-3.2,-1.8)
      HF  =(-8.4,6.2)
      LF  =(2.3,-3.9)
      LMA =17.3
      KBL =15.1
      A(1)=(3.4,6.7)+((-1.3,4.2)-(8.4,-1.3))*(1.8,4.6)/(1.6,-1.8)
      B( 1)=(2.37931,-16.14828)
      A(2)=AC+(DC-HF)*LF/AC+DC*HF
      B( 2)=(40.90541,-3.203506)
      A(3)=(-6.4,1.3)-(1.2,-9.9E-1)*(1.4,3.7)+AC/DC
      B( 3)=(-14.02638,-1.813347)
      A(4)=(0.0,0.0)*AC+(2.5E-00,0.0)/(0.0E00,4.0E-00)-AC/AC
      B(4)=(-1.0,-0.625)
      A(5)=(0.0,45.4E-1)+AC/DC-HF*LF
      B( 5)=(-7.14338,-42.5394)
      A(6)=8.3*(((AC+DC)*3.1)/AC)-6.8*LF
      B( 6)=(-1.17076,2.681268E1)
      A(7)=7.4E1+(1.8,-3.8)*(-3.4)-(0.0,8.4)/13.4
      B( 7)=(67.88,12.29313)
      A(8)=(LMA+KBL)*AC+DC/(LMA-KBL)
      B( 8)=(231.8255,138.5018)
      A(9)=2.3**8+(1.4,-3.8)*1.0-LMA**3
      B(9)=(-4393.20,-3.8)
      A(10)=9.7/(3.4,6.7)*2.3-AC/AC+LMA**0.5
      B(10)=(4.50307,-2.64795)
      A(11)=(-3.5,4.3)
      A(11)=A(11)*A(11)+A(11)/A(11)
      B(11)=(-5.24,-30.1)
  699 DO 10 I=1,11
      DIFR=REAL(A(I))-REAL(B(I))
      DIFI=AIMAG(A(I))-AIMAG(B(I))
      IF(REAL(B(I)))1,2,1
  700 IF(AIMAG(B(I)))3,4,3
    1 IF(ABS(DIFR)-1.0E-05*ABS(REAL(B(I))))700,701,701
    2 IF(ABS(DIFR)-1.0E-06)700,701,701
    3 IF(ABS(DIFI)-1.0E-05*ABS(AIMAG(B(I))))702,703,703
    4 IF(ABS(DIFI)-1.0E-06)702,703,703
  701 IF(ABS(DIFI)-1.0E-05*ABS(AIMAG(B(I))))704,705,705
  702 CONTINUE
      WRITE(6,*) '*OK*'
      GO TO 10
  703 WRITE(6,105)I,A(I),B(I),DIFR,DIFI
      GO TO 10
  704 WRITE(6,104)I,A(I),B(I),DIFR,DIFI
      GO TO 10
  705 WRITE(6,102)I,A(I),B(I),DIFR,DIFI
   10 CONTINUE
      STOP
      END
