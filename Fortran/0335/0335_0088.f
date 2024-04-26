      PROGRAM  MAIN
      INTEGER*4     ANS(50),CNST(8),A(10,10,10)
      DATA          ANS/50*0/,CNST/226,232,286,292,826,832,886,892/
      M1 = 10
      M2 = 10
      M3 = 10
      CALL SUB44 (ANS,CNST,A,M1,M2,M3)
      STOP
      END
      SUBROUTINE SUB44 (ANS,CNST,A,M1,M2,M3)
      INTEGER*4 ANS(50),CNST(8),A(M1,M2,M3)

      N        =    0
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      N        =    N+1
    1 A(I,J,K) =    N
      I1  = 1
      I2  = 2
      DO  2  I =    I1,I2,I1
      DO  2  J =    I1,I2,I1
      ANS(1)   =    ANS(1)+A(J,J,I)
      ANS(2)   =    ANS(2)+A(J,J,2*I)
      ANS(3)   =    ANS(3)+A(J,2*J,I)
      ANS(4)   =    ANS(4)+A(J,2*J,2*I)
      ANS(5)   =    ANS(5)+A(2*J,J,I)
      ANS(6)   =    ANS(6)+A(2*J,J,2*I)
      ANS(7)   =    ANS(7)+A(2*J,2*J,I)
      ANS(8)   =    ANS(8)+A(2*J,2*J,2*I)
      ANS(9)   =    ANS(9)+A(J,I,J)
      ANS(10)  =    ANS(10)+A(J,I,2*J)
      ANS(11)  =    ANS(11)+A(J,2*I,J)
      ANS(12)  =    ANS(12)+A(J,2*I,2*J)
      ANS(13)  =    ANS(13)+A(2*J,I,J)
      ANS(14)  =    ANS(14)+A(2*J,I,2*J)
      ANS(15)  =    ANS(15)+A(2*J,2*I,J)
      ANS(16)  =    ANS(16)+A(2*J,2*I,2*J)
      ANS(17)  =    ANS(17)+A(I,J,J)
      ANS(18)  =    ANS(18)+A(I,J,2*J)
      ANS(19)  =    ANS(19)+A(I,2*J,J)
      ANS(20)  =    ANS(20)+A(I,2*J,2*J)
      ANS(21)  =    ANS(21)+A(2*I,J,J)
      ANS(22)  =    ANS(22)+A(2*I,J,2*J)
      ANS(23)  =    ANS(23)+A(2*I,2*J,J)
    2 ANS(24)  =    ANS(24)+A(2*I,2*J,2*J)
      DO  3  I =    I1,I2,I1
      DO  3  J =    I1,I2,I1
      ANS(25)  =    ANS(25)+A(I,I,J)
      ANS(26)  =    ANS(26)+A(I,I,2*J)
      ANS(27)  =    ANS(27)+A(I,2*I,J)
      ANS(28)  =    ANS(28)+A(I,2*I,2*J)
      ANS(29)  =    ANS(29)+A(2*I,I,J)
      ANS(30)  =    ANS(30)+A(2*I,I,2*J)
      ANS(31)  =    ANS(31)+A(2*I,2*I,J)
      ANS(32)  =    ANS(32)+A(2*I,2*I,2*J)
      ANS(33)  =    ANS(33)+A(I,J,I)
      ANS(34)  =    ANS(34)+A(I,J,2*I)
      ANS(35)  =    ANS(35)+A(I,2*J,I)
      ANS(36)  =    ANS(36)+A(I,2*J,2*I)
      ANS(37)  =    ANS(37)+A(2*I,J,I)
      ANS(38)  =    ANS(38)+A(2*I,J,2*I)
      ANS(39)  =    ANS(39)+A(2*I,2*J,I)
      ANS(40)  =    ANS(40)+A(2*I,2*J,2*I)
      ANS(41)  =    ANS(41)+A(J,I,I)
      ANS(42)  =    ANS(42)+A(J,I,2*I)
      ANS(43)  =    ANS(43)+A(J,2*I,I)
      ANS(44)  =    ANS(44)+A(J,2*I,2*I)
      ANS(45)  =    ANS(45)+A(2*J,I,I)
      ANS(46)  =    ANS(46)+A(2*J,I,2*I)
      ANS(47)  =    ANS(47)+A(2*J,2*I,I)
    3 ANS(48)  =    ANS(48)+A(2*J,2*I,2*I)
      IPSW     =    0
      J        =    1
      DO  6  I =    1,48
      IF (ANS(I).EQ.CNST(J))  GO TO    5
      IF (IPSW.NE.0)          GO TO    4
      WRITE(6,100)
      IPSW     =    1
    4 WRITE(6,101)  I,CNST(J),ANS(I)
    5 J        =    J+1
      IF (J.LE.8)    GO TO 6
      J        =    1
    6 CONTINUE
      IF (IPSW.NE.0)     GO TO    7
      WRITE(6,102)
      RETURN
    7 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-44 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
