      PROGRAM  MAIN
      INTEGER*2     ANS(150),CNST(150),A(10,10,10)
      DATA          ANS/150*0/,CNST/26,32,86,92,26,32,86,92,206,212,
     *    806,812,206,212,806,812,224,284,824,884,226,232,286,292,
     *    826,832,886,892,226,232,286,292,826,832,886,892,226,232,286,
     *    292,826,832,886,892,226,232,286,292,826,832,886,892,226,232,
     *    286,292,826,832,886,892,226,232,286,292,826,832,886,892,
     *    226,232,286,292,826,832,886,892,
     *    226,232,286,292,826,832,886,892,
     *    226,232,286,292,826,832,886,892,
     *    226,232,286,292,826,832,886,892,
     *    226,232,286,292,826,832,886,892,
     *    226,232,286,292,826,832,886,892,34*0/
      CALL SUB47 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE SUB47 (ANS,CNST,A)
      INTEGER*2     ANS(150),CNST(150),A(10,10,10)
      N        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    N
    1 N        =    N+1

      I1  = 1
      I2  = 2
      DO  3  I =    I1,I2,I1
      N        =    1
    2 ANS(1)   =    ANS(1)+A(1,N,I)
      ANS(2)   =    ANS(2)+A(1,N,2*I)
      ANS(3)   =    ANS(3)+A(1,2*N,I)
      ANS(4)   =    ANS(4)+A(1,2*N,2*I)
      ANS(5)   =    ANS(5)+A(1,I,N)
      ANS(6)   =    ANS(6)+A(1,I,2*N)
      ANS(7)   =    ANS(7)+A(1,2*I,N)
      ANS(8)   =    ANS(8)+A(1,2*I,2*N)
      ANS(9)   =    ANS(9)+A(I,1,N)
      ANS(10)  =    ANS(10)+A(I,1,2*N)
      ANS(11)  =    ANS(11)+A(2*I,1,N)
      ANS(12)  =    ANS(12)+A(2*I,1,2*N)
      ANS(13)  =    ANS(13)+A(N,1,I)
      ANS(14)  =    ANS(14)+A(N,1,2*I)
      ANS(15)  =    ANS(15)+A(2*N,1,I)
      ANS(16)  =    ANS(16)+A(2*N,1,2*I)
      ANS(17)  =    ANS(17)+A(I,N,1)
      ANS(18)  =    ANS(18)+A(I,2*N,1)
      ANS(19)  =    ANS(19)+A(2*I,N,1)
      ANS(20)  =    ANS(20)+A(2*I,2*N,1)
      N        =    N+1
      IF (N.LE.2)   GO TO 2
    3 CONTINUE
      DO  5  I =    I1,I2,I1
      N        =    1
    4 ANS(21)  =    ANS(21)+A(N,N,I)
      ANS(22)  =    ANS(22)+A(N,N,2*I)
      ANS(23)  =    ANS(23)+A(N,2*N,I)
      ANS(24)  =    ANS(24)+A(N,2*N,2*I)
      ANS(25)  =    ANS(25)+A(2*N,N,I)
      ANS(26)  =    ANS(26)+A(2*N,N,2*I)
      ANS(27)  =    ANS(27)+A(2*N,2*N,I)
      ANS(28)  =    ANS(28)+A(2*N,2*N,2*I)
      ANS(29)  =    ANS(29)+A(N,I,N)
      ANS(30)  =    ANS(30)+A(N,I,2*N)
      ANS(31)  =    ANS(31)+A(N,2*I,N)
      ANS(32)  =    ANS(32)+A(N,2*I,2*N)
      ANS(33)  =    ANS(33)+A(2*N,I,N)
      ANS(34)  =    ANS(34)+A(2*N,I,2*N)
      ANS(35)  =    ANS(35)+A(2*N,2*I,N)
      ANS(36)  =    ANS(36)+A(2*N,2*I,2*N)
      ANS(37)  =    ANS(37)+A(I,N,N)
      ANS(38)  =    ANS(38)+A(I,N,2*N)
      ANS(39)  =    ANS(39)+A(I,2*N,N)
      ANS(40)  =    ANS(40)+A(I,2*N,2*N)
      ANS(41)  =    ANS(41)+A(2*I,N,N)
      ANS(42)  =    ANS(42)+A(2*I,N,2*N)
      ANS(43)  =    ANS(43)+A(2*I,2*N,N)
      ANS(44)  =    ANS(44)+A(2*I,2*N,2*N)
      N        =    N+1
      IF (N.LE.2)   GO TO    4
    5 CONTINUE
      N1       =    1
      DO  7  I =    I1,I2,I1
      N2       =    1
    6 ANS(45)  =    ANS(45)+A(N1,N2,I)
      ANS(46)  =    ANS(46)+A(N1,N2,2*I)
      ANS(47)  =    ANS(47)+A(N1,2*N2,I)
      ANS(48)  =    ANS(48)+A(N1,2*N2,2*I)
      ANS(49)  =    ANS(49)+A(2*N1,N2,I)
      ANS(50)  =    ANS(50)+A(2*N1,N2,2*I)
      ANS(51)  =    ANS(51)+A(2*N1,2*N2,I)
      ANS(52)  =    ANS(52)+A(2*N1,2*N2,2*I)
      ANS(53)  =    ANS(53)+A(N1,I,N2)
      ANS(54)  =    ANS(54)+A(N1,I,2*N2)
      ANS(55)  =    ANS(55)+A(N1,2*I,N2)
      ANS(56)  =    ANS(56)+A(N1,2*I,2*N2)
      ANS(57)  =    ANS(57)+A(2*N1,I,N2)
      ANS(58)  =    ANS(58)+A(2*N1,I,2*N2)
      ANS(59)  =    ANS(59)+A(2*N1,2*I,N2)
      ANS(60)  =    ANS(60)+A(2*N1,2*I,2*N2)
      ANS(61)  =    ANS(61)+A(I,N1,N2)
      ANS(62)  =    ANS(62)+A(I,N1,2*N2)
      ANS(63)  =    ANS(63)+A(I,2*N1,N2)
      ANS(64)  =    ANS(64)+A(I,2*N1,2*N2)
      ANS(65)  =    ANS(65)+A(2*I,N1,N2)
      ANS(66)  =    ANS(66)+A(2*I,N1,2*N2)
      ANS(67)  =    ANS(67)+A(2*I,2*N1,N2)
      ANS(68)  =    ANS(68)+A(2*I,2*N1,2*N2)
      ANS(69)  =    ANS(69)+A(N2,N1,I)
      ANS(70)  =    ANS(70)+A(N2,N1,2*I)
      ANS(71)  =    ANS(71)+A(N2,2*N1,I)
      ANS(72)  =    ANS(72)+A(N2,2*N1,2*I)
      ANS(73)  =    ANS(73)+A(2*N2,N1,I)
      ANS(74)  =    ANS(74)+A(2*N2,N1,2*I)
      ANS(75)  =    ANS(75)+A(2*N2,2*N1,I)
      ANS(76)  =    ANS(76)+A(2*N2,2*N1,2*I)
      ANS(77)  =    ANS(77)+A(N2,I,N1)
      ANS(78)  =    ANS(78)+A(N2,I,2*N1)
      ANS(79)  =    ANS(79)+A(N2,2*I,N1)
      ANS(80)  =    ANS(80)+A(N2,2*I,2*N1)
      ANS(81)  =    ANS(81)+A(2*N2,I,N1)
      ANS(82)  =    ANS(82)+A(2*N2,I,2*N1)
      ANS(83)  =    ANS(83)+A(2*N2,2*I,N1)
      ANS(84)  =    ANS(84)+A(2*N2,2*I,2*N1)
      ANS(85)  =    ANS(85)+A(I,N2,N1)
      ANS(86)  =    ANS(86)+A(I,N2,2*N1)
      ANS(87)  =    ANS(87)+A(I,2*N2,N1)
      ANS(88)  =    ANS(88)+A(I,2*N2,2*N1)
      ANS(89)  =    ANS(89)+A(2*I,N2,N1)
      ANS(90)  =    ANS(90)+A(2*I,N2,2*N1)
      ANS(91)  =    ANS(91)+A(2*I,2*N2,N1)
      ANS(92)  =    ANS(92)+A(2*I,2*N2,2*N1)
      N2       =    N2+1
      IF (N2.LE.2)  GO TO    6
    7 N1       =    N1+1
      DO  9  I =    I1,I2,I1
      N        =    1
    8 ANS(93)  =    ANS(93)+A(N,I,I)
      ANS(94)  =    ANS(94)+A(N,I,2*I)
      ANS(95)  =    ANS(95)+A(N,2*I,I)
      ANS(96)  =    ANS(96)+A(N,2*I,2*I)
      ANS(97)  =    ANS(97)+A(2*N,I,I)
      ANS(98)  =    ANS(98)+A(2*N,I,2*I)
      ANS(99)  =    ANS(99)+A(2*N,2*I,I)
      ANS(100) =    ANS(100)+A(2*N,2*I,2*I)
      ANS(101) =    ANS(101)+A(I,N,I)
      ANS(102) =    ANS(102)+A(I,N,2*I)
      ANS(103) =    ANS(103)+A(I,2*N,I)
      ANS(104) =    ANS(104)+A(I,2*N,2*I)
      ANS(105) =    ANS(105)+A(2*I,N,I)
      ANS(106) =    ANS(106)+A(2*I,N,2*I)
      ANS(107) =    ANS(107)+A(2*I,2*N,I)
      ANS(108) =    ANS(108)+A(2*I,2*N,2*I)
      ANS(109) =    ANS(109)+A(I,I,N)
      ANS(110) =    ANS(110)+A(I,I,2*N)
      ANS(111) =    ANS(111)+A(I,2*I,N)
      ANS(112) =    ANS(112)+A(I,2*I,2*N)
      ANS(113) =    ANS(113)+A(2*I,I,N)
      ANS(114) =    ANS(114)+A(2*I,I,2*N)
      ANS(115) =    ANS(115)+A(2*I,2*I,N)
      ANS(116) =    ANS(116)+A(2*I,2*I,2*N)
      N        =    N+1
      IF (N.LE.2)   GO TO    8
    9 CONTINUE
      IPSW     =    0
      DO  11 I =    1,150
      IF (ANS(I).EQ.CNST(I))  GO TO   11
      IF (IPSW.NE.0)          GO TO   10
      WRITE(6,100)
      IPSW     =    1
   10 WRITE(6,101)  I,CNST(I),ANS(I)
   11 CONTINUE
      IF (IPSW.NE.0)          GO TO   12
      WRITE(6,102)
      RETURN
   12 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-47 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
