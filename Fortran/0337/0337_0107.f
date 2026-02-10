      LOGICAL A(100),B(100)
      DOUBLE PRECISION C,D,E
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,L6,20X,L6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,L6,20X,L6)
      C   =1.23456789
      D   =-1.23456789
      E   =6879.4D70
      A(1)=123.4567891011.LT.234.5678910112
      B(1)=.TRUE.
      A(2)=-4.3D-1.LT.-2.3D1
      B(2)=.FALSE.
      A(3)=4.57D1.LT.-3.21D1
      B(3)=.FALSE.
      A(4)=0.45D-1.LT.C
      B(4)=.TRUE.
      A(5)=-1.11D-1.LT.D
      B(5)=.FALSE.
      A(6)=C.LT.-389.4D1
      B(6)=.FALSE.
      A(7)=C.LT.E
      B(7)=.TRUE.
      A(8)=D.LT.D
      B(8)=.FALSE.
      A(9)=D.LT.E
      B(9)=.TRUE.
      A(10)=3.23D1.LE.4.67D1
      B(10)=.TRUE.
      A(11)=21.23D2.LE.-3.45D1
      B(11)=.FALSE.
      A(12)=-1.45D-2.LE.-1.45D-2
      B(12)=.TRUE.
      A(13)=C.LE.1.23456789
      B(13)=.TRUE.
      A(14)=D.LE.-475.4D-10
      B(14)=.TRUE.
      A(15)=-4.99D1.LE.C
      B(15)=.TRUE.
      A(16)=C.LE.C
      B(16)=.TRUE.
      A(17)=D.LE.D
      B(17)=.TRUE.
      A(18)=E.LE.D
      B(18)=.FALSE.
      A(19)=3.789D2.EQ.0.3789D3
      B(19)=.TRUE.
      A(20)=-123.4D1.EQ.-397.4D1
      B(20)=.FALSE.
      A(21)=-4.38D2.EQ.4.38D2
      B(21)=.FALSE.
      A(22)=C.EQ.4.8D3
      B(22)=.FALSE.
      A(23)=-1.23456789.EQ.D
      B(23)=.TRUE.
      A(24)=C.EQ.-3.894D1
      B(24)=.FALSE.
      A(25)=C.EQ.D
      B(25)=.FALSE.
      A(26)=D.EQ.D
      B(26)=.TRUE.
      A(27)=D.EQ.C
      B(27)=.FALSE.
      A(28)=982.4D4.NE.982.4D4
      B(28)=.FALSE.
      A(29)=-1.45D 10.NE.1.44D10
      B(29)=.TRUE.
      A(30)=-6.46D-4.NE.-6.46D-4
      B(30)=.FALSE.
      A(31)=C.NE.1.23456789
      B(31)=.FALSE.
      A(32)=-1.23456789.NE.C
      B(32)=.TRUE.
      A(33)=D.NE.-0.4978D-70
      B(33)=.TRUE.
      A(34)=C.NE.C
      B(34)=.FALSE.
      A(35)=D.NE.D
      B(35)=.FALSE.
      A(36)=E.NE.C
      B(36)=.TRUE.
      A(37)=4.98D70.GT.4.98D70
      B(37)=.FALSE.
      A(38)=-689.4D60.GT.4.18D60
      B(38)=.FALSE.
      A(39)=-1.48D40.GT.-1.48D30
      B(39)=.FALSE.
      A(40)=C.GT.12.345678
      B(40)=.FALSE.
      A(41)=-3.8D-40.GT.D
      B(41)=.TRUE.
      A(42)=C.GT.-3894.5D1
      B(42)=.TRUE.
      A(43)=E.GT.C
      B(43)=.TRUE.
      A(44)=D.GT.D
      B(44)=.FALSE.
      A(45)=C.GT.D
      B(45)=.TRUE.
      A(46)=4.44D4.GE.4.44D3
      B(46)=.TRUE.
      A(47)=-38.4D-7.GE.4.19D-70
      B(47)=.FALSE.
      A(48)=-1.3845D5.GE.-1.38D6
      B(48)=.TRUE.
      A(49)=3.4D7.GE.C
      B(49)=.TRUE.
      A(50)=D.GE.-4.7D-2
      B(50)=.FALSE.
      A(51)=-0.43D3.GE.C
      B(51)=.FALSE.
      A(52)=C.GE.C
      B(52)=.TRUE.
      A(53)=E.GE.D
      B(53)=.TRUE.
      A(54)=D.GE.D
      B(54)=.TRUE.
      I=1
      N=29
   11 DO 10 I=I,N
      IF(B(I))GO TO 1
      GO TO 2
    1 IF(A(I))GO TO 3
      GO TO 4
    2 IF(A(I))GO TO 4
    3 WRITE(6,103)I
      GO TO 10
    4 WRITE(6,102)I,A(I),B(I)
   10 CONTINUE
      IF(N-29)7,6,7
    6 I=30
      N=54
      GO TO 11
    7 CONTINUE
      STOP 1234,quiet=.true.
      END
