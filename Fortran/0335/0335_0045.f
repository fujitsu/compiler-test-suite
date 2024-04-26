      PROGRAM  MAIN
      INTEGER*4     ANS(50),A(10,10,10),CNST(50)
      DATA          ANS/50*0/,CNST/26,32,86,92,426,432,486,492,26,32,
     *    86,92,426,432,486,492,206,212,246,252,806,812,846,852,206,
     *    212,246,252,806,812,846,852,224,228,284,288,824,828,884,888,
     *    224,228,284,288,824,828,884,888,2*0/
      M1 = 10
      M2 = 10
      M3 = 10
      CALL SUB48 (ANS,CNST,A,M1,M2,M3)
      STOP
      END
      SUBROUTINE SUB48 (ANS,CNST,A,M1,M2,M3)
      INTEGER*4 ANS(50),CNST(50),A(M1,10,M2)
      N        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      A(I,J,K) =    N
    1 N        =    N+1
      N1       =    1
      DO  3  I =    1,2
      N2       =    1
      DO  2  J =    1,2
      ANS(1)   =    ANS(1)+A(N1,N2,I)
      ANS(2)   =    ANS(2)+A(N1,N2,2*I)
      ANS(3)   =    ANS(3)+A(N1,2*N2,I)
      ANS(4)   =    ANS(4)+A(N1,2*N2,2*I)
      ANS(5)   =    ANS(5)+A(2*N1,N2,I)
      ANS(6)   =    ANS(6)+A(2*N1,N2,2*I)
      ANS(7)   =    ANS(7)+A(2*N1,2*N2,I)
      ANS(8)   =    ANS(8)+A(2*N1,2*N2,2*I)

      ANS(9)   =    ANS(9)+A(N1,I,N2)
      ANS(10)  =    ANS(10)+A(N1,I,2*N2)
      ANS(11)  =    ANS(11)+A(N1,2*I,N2)
      ANS(12)  =    ANS(12)+A(N1,2*I,2*N2)
      ANS(13)  =    ANS(13)+A(2*N1,I,N2)
      ANS(14)  =    ANS(14)+A(2*N1,I,2*N2)
      ANS(15)  =    ANS(15)+A(2*N1,2*I,N2)
      ANS(16)  =    ANS(16)+A(2*N1,2*I,2*N2)

      ANS(17)  =    ANS(17)+A(I,N1,N2)
      ANS(18)  =    ANS(18)+A(I,N1,2*N2)
      ANS(19)  =    ANS(19)+A(I,2*N1,N2)
      ANS(20)  =    ANS(20)+A(I,2*N1,2*N2)
      ANS(21)  =    ANS(21)+A(2*I,N1,N2)
      ANS(22)  =    ANS(22)+A(2*I,N1,2*N2)
      ANS(23)  =    ANS(23)+A(2*I,2*N1,N2)
      ANS(24)  =    ANS(24)+A(2*I,2*N1,2*N2)

      ANS(25)  =    ANS(25)+A(N2,N1,J)
      ANS(26)  =    ANS(26)+A(N2,N1,2*J)
      ANS(27)  =    ANS(27)+A(N2,2*N1,J)
      ANS(28)  =    ANS(28)+A(N2,2*N1,2*J)
      ANS(29)  =    ANS(29)+A(2*N2,N1,J)
      ANS(30)  =    ANS(30)+A(2*N2,N1,2*J)
      ANS(31)  =    ANS(31)+A(2*N2,2*N1,J)
      ANS(32)  =    ANS(32)+A(2*N2,2*N1,2*J)

      ANS(33)  =    ANS(33)+A(N2,J,N1)
      ANS(34)  =    ANS(34)+A(N2,J,2*N1)
      ANS(35)  =    ANS(35)+A(N2,2*J,N1)
      ANS(36)  =    ANS(36)+A(N2,2*J,2*N1)
      ANS(37)  =    ANS(37)+A(2*N2,J,N1)
      ANS(38)  =    ANS(38)+A(2*N2,J,2*N1)
      ANS(39)  =    ANS(39)+A(2*N2,2*J,N1)
      ANS(40)  =    ANS(40)+A(2*N2,2*J,2*N1)

      ANS(41)  =    ANS(41)+A(J,N2,N1)
      ANS(42)  =    ANS(42)+A(J,N2,2*N1)
      ANS(43)  =    ANS(43)+A(J,2*N2,N1)
      ANS(44)  =    ANS(44)+A(J,2*N2,2*N1)
      ANS(45)  =    ANS(45)+A(2*J,N2,N1)
      ANS(46)  =    ANS(46)+A(2*J,N2,2*N1)
      ANS(47)  =    ANS(47)+A(2*J,2*N2,N1)
      ANS(48)  =    ANS(48)+A(2*J,2*N2,2*N1)
    2 N2       =    N2+1
    3 CONTINUE
      IPSW     =    0
      DO  5  I =    1,50
      IF (ANS(I).EQ.CNST(I))  GO TO    5
      IF (IPSW.NE.0)          GO TO    4
      WRITE(6,100)
      IPSW     =    1
    4 WRITE(6,101)  I,CNST(I),ANS(I)
    5 CONTINUE
      IF (IPSW.NE.0)          GO TO    6
      WRITE(6,102)
      RETURN
    6 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-48 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
