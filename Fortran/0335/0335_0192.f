      PROGRAM  MAIN
      INTEGER*4     ANS(100),CNST(100),A(10,10,10)
      DATA          ANS/100*0/,CNST/26,32,86,92,426,
     *    432,486,492,206,212,246,252,806,812,846,852,
     *    224,228,284,288,824,828,884,888,26,32,86,92,426,
     *    432,486,492,206,212,246,252,806,812,846,852,
     *    224,228,284,288,824,828,884,888,26,32,86,92,
     *    426,432,486,492,26,32,86,92,426,432,486,492,
     *    224,228,284,288,824,828,884,888,206,212,246,252,
     *    806,812,846,852,206,212,246,252,806,812,846,
     *    852,224,228,284,288,824,828,884,888,4*0/
      CALL SUB51 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE SUB51 (ANS,CNST,A)
      INTEGER*4     ANS(100),CNST(100),A(10,10,10)
      N1       =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    N1
    1 N1       =    N1+1
      N1       =    1
      I1  = 1
      I2  = 2
      DO  2  I =    I1,I2,I1
      DO  2  J =    I1,I2,I1
      ANS(1)   =    ANS(1)+A(N1,J,J)
      ANS(2)   =    ANS(2)+A(N1,J,2*J)
      ANS(3)   =    ANS(3)+A(N1,2*J,J)
      ANS(4)   =    ANS(4)+A(N1,2*J,2*J)
      ANS(5)   =    ANS(5)+A(2*N1,J,J)
      ANS(6)   =    ANS(6)+A(2*N1,J,2*J)
      ANS(7)   =    ANS(7)+A(2*N1,2*J,J)
      ANS(8)   =    ANS(8)+A(2*N1,2*J,2*J)
      ANS(9)   =    ANS(9)+A(J,N1,J)
      ANS(10)  =    ANS(10)+A(J,N1,2*J)
      ANS(11)  =    ANS(11)+A(J,2*N1,J)
      ANS(12)  =    ANS(12)+A(J,2*N1,2*J)
      ANS(13)  =    ANS(13)+A(2*J,N1,J)
      ANS(14)  =    ANS(14)+A(2*J,N1,2*J)
      ANS(15)  =    ANS(15)+A(2*J,2*N1,J)
      ANS(16)  =    ANS(16)+A(2*J,2*N1,2*J)
      ANS(17)  =    ANS(17)+A(J,J,N1)
      ANS(18)  =    ANS(18)+A(J,J,2*N1)
      ANS(19)  =    ANS(19)+A(J,2*J,N1)
      ANS(20)  =    ANS(20)+A(J,2*J,2*N1)
      ANS(21)  =    ANS(21)+A(2*J,J,N1)
      ANS(22)  =    ANS(22)+A(2*J,J,2*N1)
      ANS(23)  =    ANS(23)+A(2*J,2*J,N1)
    2 ANS(24)  =    ANS(24)+A(2*J,2*J,2*N1)
      N1       =    1
      DO  9  I =    I1,I2,I1
      DO  3  J =    I1,I2,I1
    3 ANS(25)  =    ANS(25)+A(N1,I,I)
      DO  4  J =    I1,I2,I1
    4 ANS(26)  =    ANS(26)+A(N1,I,2*I)
      DO  5  J =    I1,I2,I1
      ANS(27)  =    ANS(27)+A(N1,2*I,I)
    5 ANS(28)  =    ANS(28)+A(N1,2*I,2*I)
      DO  6  J =    I1,I2,I1
      ANS(29)  =    ANS(29)+A(2*N1,I,I)
      ANS(30)  =    ANS(30)+A(2*N1,I,2*I)
    6 ANS(31)  =    ANS(31)+A(2*N1,2*I,I)
      DO  7  J =    I1,I2,I1
      ANS(32)  =    ANS(32)+A(2*N1,2*I,2*I)
      ANS(33)  =    ANS(33)+A(I,N1,I)
      ANS(34)  =    ANS(34)+A(I,N1,2*I)
    7 ANS(35)  =    ANS(35)+A(I,2*N1,I)
      DO  8  J =    I1,I2,I1
      ANS(36)  =    ANS(36)+A(I,2*N1,2*I)
      ANS(37)  =    ANS(37)+A(2*I,N1,I)
      ANS(38)  =    ANS(38)+A(2*I,N1,2*I)
      ANS(39)  =    ANS(39)+A(2*I,2*N1,I)
    8 ANS(40)  =    ANS(40)+A(2*I,2*N1,2*I)
      DO  9  J =    I1,I2,I1
      ANS(41)  =    ANS(41)+A(I,I,N1)
      ANS(42)  =    ANS(42)+A(I,I,2*N1)
      ANS(43)  =    ANS(43)+A(I,2*I,N1)
      ANS(44)  =    ANS(44)+A(I,2*I,2*N1)
      ANS(45)  =    ANS(45)+A(2*I,I,N1)
      ANS(46)  =    ANS(46)+A(2*I,I,2*N1)
      ANS(47)  =    ANS(47)+A(2*I,2*I,N1)
    9 ANS(48)  =    ANS(48)+A(2*I,2*I,2*N1)
      N1       =    1
      N   =    1
      DO  10 I =    I1,I2,I1
      DO  10 J =    I1,I2,I1
      ANS(49)  =   ANS(49)+A(N1,J,I)
      ANS(50)  =   ANS(50)+A(N1,J,2*I)
      ANS(51)  =   ANS(51)+A(N1,2*J,I)
      ANS(52)  =   ANS(52)+A(N1,2*J,2*I)
      ANS(53)  =   ANS(53)+A(2*N1,J,I)
      ANS(54)  =   ANS(54)+A(2*N1,J,2*I)
      ANS(55)  =   ANS(55)+A(2*N1,2*J,I)
      ANS(56)  =   ANS(56)+A(2*N1,2*J,2*I)
      ANS(57)  =   ANS(57)+A(N1,I,J)
      ANS(58)  =   ANS(58)+A(N1,I,2*J)
      ANS(59)  =   ANS(59)+A(N1,2*I,J)
      ANS(60)  =   ANS(60)+A(N1,2*I,2*J)
      ANS(61)  =   ANS(61)+A(2*N1,I,J)
      ANS(62)  =   ANS(62)+A(2*N1,I,2*J)
      ANS(63)  =   ANS(63)+A(2*N1,2*I,J)
      ANS(64)  =   ANS(64)+A(2*N1,2*I,2*J)
      ANS(65)  =    ANS(65)+A(J,I,N1)
      ANS(66)  =    ANS(66)+A(J,I,2*N1)
      ANS(67)  =    ANS(67)+A(J,2*I,N1)
      ANS(68)  =    ANS(68)+A(J,2*I,2*N1)
      ANS(69)  =    ANS(69)+A(2*J,I,N1)
      ANS(70)  =    ANS(70)+A(2*J,I,2*N1)
      ANS(71)  =    ANS(71)+A(2*J,2*I,N1)
      ANS(72)  =    ANS(72)+A(2*J,2*I,2*N1)
      ANS(73)  =    ANS(73)+A(J,N1,I)
      ANS(74)  =    ANS(74)+A(J,N1,2*I)
      ANS(75)  =    ANS(75)+A(J,2*N1,I)
      ANS(76)  =    ANS(76)+A(J,2*N1,2*I)
      ANS(77)  =    ANS(77)+A(2*J,N1,I)
      ANS(78)  =    ANS(78)+A(2*J,N1,2*I)
      ANS(79)  =    ANS(79)+A(2*J,2*N1,I)
      ANS(80)  =    ANS(80)+A(2*J,2*N1,2*I)
      ANS(81)  =    ANS(81)+A(I,N,J)
      ANS(82)  =    ANS(82)+A(I,N,2*J)
      ANS(83)  =    ANS(83)+A(I,2*N,J)
      ANS(84)  =    ANS(84)+A(I,2*N,2*J)
      ANS(85)  =    ANS(85)+A(2*I,N,J)
      ANS(86)  =    ANS(86)+A(2*I,N,2*J)
      ANS(87)  =    ANS(87)+A(2*I,2*N,J)
      ANS(88)  =    ANS(88)+A(2*I,2*N,2*J)
      ANS(89)  =    ANS(89)+A(I,J,N)
      ANS(90)  =    ANS(90)+A(I,J,2*N)
      ANS(91)  =    ANS(91)+A(I,2*J,N)
      ANS(92)  =    ANS(92)+A(I,2*J,2*N)
      ANS(93)  =    ANS(93)+A(2*I,J,N)
      ANS(94)  =    ANS(94)+A(2*I,J,2*N)
      ANS(95)  =    ANS(95)+A(2*I,2*J,N)
   10 ANS(96)  =    ANS(96)+A(2*I,2*J,2*N)
      IPSW     =    0
      DO  12 I =    1,96
      IF (ANS(I).EQ.CNST(I))  GO TO     12
      IF (IPSW.NE.0)          GO TO     11
      WRITE(6,100)
      IPSW     =    1
   11 WRITE(6,101)  I,CNST(I),ANS(I)
   12 CONTINUE
      IF (IPSW.NE.0)          GO TO     13
      WRITE(6,102)
      RETURN
   13 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-51 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
