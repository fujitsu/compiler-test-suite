      DOUBLE PRECISION A(100),B(100),DIF,P,Q,R,S,T,U
      a = 0
      DIF = 0
      WRITE(6,101)
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM  -         - COMPUTED,
     *7H RESULT13X,17H- COMPARE VALUE -15X,13H- DIFFERENS -/)
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),7X,D24.17,7X,D24.17,7X,
     *D24.17)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),7X,D24.17,7X,D24.17,7X,
     *D24.17)
  999 FORMAT(1H0/2X,27H*FORTRAN*              EXIT)
      Z   =0.0
      P  =7205753.1537927935
      Q  =-7205753.1537927935
      S=2.0D-1
      T=-2.0D-1
      U  =111.11111111111111
      G  =1.3
      H  =2.0
      E  =1111.11
      F  =-3.8
      A(1) =222.22222222222222+49.835309315705713D 01
      B(1) =720.57531537927935
      A(2) =123.12312312312312+U
      B(2) =234.23423423423423
      A(3) =S+U
      B(3) =111.31111111111111
      A(4) =666666666666.66666+(-1000000000.12321)
      B(4) =665666666666.54345
      A(5) =Q + 1101111.1111111111
      B(5)=-6104642.0426816824
      A(6) =Q+(-T)
      B(6) =-7205752.9537927935
      B(7) =0.0
      A(8) =6713568.454-1212123.234
      B(8) =5501445.220
      A(9) =P-4983530.9315705713
      B(9) =2222222.2222222222
      A(10)=P-S
      B(10)=7205752.9537927935
      A(11)=-1234567898765432.1-1111111111111111.1
      B(11)=-2345679009876543.2
      A(12)=7.7777777777777-(T)
      B(12)=7.9777777777777
      A(13)=Q-Q
      B(13)=0.0
      A(14)=0.0-Z
      B(14)=0.0
      A(15)=2.00000000003*1000000000.0
      B(15)=2000000000.03
      A(16)=S*3454345.23
      B(16)= 690869.046
      A(17)=S*U
      B(17)=22.222222222222222
      A(18)=3.4D 01*(-1.3D 01)
      B(18)=-442.0
      A(19)=T*4.37276D 02
      B(19)=-8.74552D 01
      A(20)=T*U
      B(20)=-22.22222222222222
      A(21)=P*Z
      B(21)=0.0
      A(22)=7.33D 01/0.3D 01
      B(22)=24.433333333333333
      A(23)=4545454545.5/S
      B(23)=22727272727.5
      A(24)=P/S
      B(24)=36028765.768963968
      A(25)=-467.5D 01/0.3D 01
      B(25)=-1558.3333333333333
      A(26)=Q/2.0D-1
      B(26)=-36028765.768963968
      A(27)=P/T
      B(27)=-36028765.768963968
      A(28)=Z/Q
      B(28)=0.0
      A(29)=0.12345678910111213D 25+0.1234E 25
      B(29)=0.24685678910111213D 25
      A(30)=10987654321D 3+G
      B(30)=10987654321001.3
      A(31)=G+U
      B(31)=112.411111111111
      A(32)=-5555555555D 5+(-4444444444D 5)
      B(32)=-9999999999D 5
      A(33)=Q+3.45
      B(33)=-7205749.753
      A(34)=Q+E
      B(34)=-7204643.0437927935
      A(35)=P+0.0
      B(35)=7205753.1537927935
      A(36)=0.389E 3-0.2361886424D 3
      B(36)=152.8113576
      A(37)=U-1.11E-2
      B(37)=111.10001111111111
      A(38)=H-S
      B(38)=1.8
      A(39)=-8.34E 2-1.2987765478D 2
      B(39)=-963.87765478D 0
      A(40)=-0.2123456789D4-E
      B(40)=-0.3234566789D4
      A(41)=F-T
      B(41)=-3.6
      A(42)=Z-F
      B(42)=3.8
      A(43)=0.27*475D 1
      B(43)=1282.5
      A(44)=0.3*U
      B(44)=33.333333333333333
      A(45)=G*U
      B(45)=144.44444444444441
      A(46)=2.32134131D 3*(-2.2)
      B(46)=-5106.950882
      A(47)=G*(-0.3456D4)
      B(47)=-0.44928D4
      A(48)=F*U
      B(48)=-422.2222222222218
      A(49)=0.0*Z
      B(49)=0.0
      A(50)=0.3867261495313/0.7
      B(50)=0.55246592790185714
      A(51)=P/4.0
      B(51)=18014382.884481984D-1
      A(52)=E/S
      B(52)=5555.55
      A(53)=8.8888D 4/(-8.8888D 4)
      B(53)=-1.0
      A(54)=0.76D2/F
      B(54)=-0.2D2
      A(55)=Q/H
      B(55)=-0.360287657189E07
      A(56)=Z/3.6
      B(56)=0.0
      I    =1
      N=28
    8 DO 5 I=I,N
      DIF =A(I)-B(I)
      IF(B(I))1,2,1
    2 IF(I-28)10,10,9
   10 IF(DABS(DIF)-1.0E-15)3,4,4
    9 IF(DABS(DIF)-1.0E-06)3,4,4
    1 IF(I-28)12,12,14
   12 IF(DABS(DIF)-1.0E-15*DABS(B(I)))3,4,4
   14 IF(DABS(DIF)-1.0E-5*DABS(B(I)))3,4,4
    3 WRITE(6,103)I,A(I),B(I),DIF
      GO TO 5
    4 WRITE(6,102)I,A(I),B(I),DIF
    5 CONTINUE
      IF(N-56)7,6,6
    7 I=29
      N=56
      WRITE(6,101)
      GO TO 8
    6 WRITE(6,999)
      STOP
      END