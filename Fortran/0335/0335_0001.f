      PROGRAM  MAIN
      INTEGER*4     ANS(50),A(10,10),CNST(50)
      DATA       ANS/50*0/,CNST/9,42,66,108,141,165,63,69,72,78,81,75,
     *                         93,99,102,108,105,153,159,162,168,171,
     *                        165,183,189,192,198,201,195,123,129,132,
     *                        138,141,135,66,33,39,42,48,51,45,96,156,
     *                        186,126,111,0,0,0/
      M1      =    10
      M2      =    10
      CALL SUB02 (ANS,CNST,A,M1,M2)
      STOP
      END
      SUBROUTINE SUB02 (ANS,CNST,A,L1,L2)
      INTEGER*4    ANS(50),CNST(50),A(L1,L2)
      K        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      A(I,J)   =    K
   1  K        =    K+1

      DO  2  I =    2,4
      ANS(1)   =    ANS(1)+A(1,I)
      ANS(2)   =    ANS(2)+A(2,I+1)
      ANS(3)   =    ANS(3)+A(3,I-1)
      ANS(4)   =    ANS(4)+A(4,2*I)
      ANS(5)   =    ANS(5)+A(5,2*I+1)
      ANS(6)   =    ANS(6)+A(6,2*I-1)
      ANS(7)   =    ANS(7)+A(I,1)
      ANS(8)   =    ANS(8)+A(I,I)
      ANS(9)   =    ANS(9)+A(I,I+1)
      ANS(10)  =    ANS(10)+A(I,2*I)
      ANS(11)  =    ANS(11)+A(I,2*I+1)
      ANS(12)  =    ANS(12)+A(I,2*I-1)
      ANS(13)  =    ANS(13)+A(I+1,1)
      ANS(14)  =    ANS(14)+A(I+1,I)
      ANS(15)  =    ANS(15)+A(I+1,I+1)
      ANS(16)  =    ANS(16)+A(I+1,2*I)
      ANS(17)  =    ANS(17)+A(I+1,2*I-1)
      ANS(18)  =    ANS(18)+A(2*I,1)
      ANS(19)  =    ANS(19)+A(2*I,I)
      ANS(20)  =    ANS(20)+A(2*I,I+1)
      ANS(21)  =    ANS(21)+A(2*I,2*I)
      ANS(22)  =    ANS(22)+A(2*I,2*I+1)
      ANS(23)  =    ANS(23)+A(2*I,2*I-1)
      ANS(24)  =    ANS(24)+A(2*I+1,1)
      ANS(25)  =    ANS(25)+A(2*I+1,I)
      ANS(26)  =    ANS(26)+A(2*I+1,I+1)
      ANS(27)  =    ANS(27)+A(2*I+1,2*I)
      ANS(28)  =    ANS(28)+A(2*I+1,2*I+1)
      ANS(29)  =    ANS(29)+A(2*I+1,2*I-1)
      ANS(30)  =    ANS(30)+A(2*I-1,1)
      ANS(31)  =    ANS(31)+A(2*I-1,I)
      ANS(32)  =    ANS(32)+A(2*I-1,I+1)
      ANS(33)  =    ANS(33)+A(2*I-1,2*I)
      ANS(34)  =    ANS(34)+A(2*I-1,2*I+1)
      ANS(35)  =    ANS(35)+A(2*I-1,2*I-1)
      ANS(36)  =    ANS(36)+A(I,I-1)
      ANS(37)  =    ANS(37)+A(I-1,1)
      ANS(38)  =    ANS(38)+A(I-1,I)
      ANS(39)  =    ANS(39)+A(I-1,I+1)
      ANS(40)  =    ANS(40)+A(I-1,2*I)
      ANS(41)  =    ANS(41)+A(I-1,2*I+1)
      ANS(42)  =    ANS(42)+A(I-1,2*I-1)
      ANS(43)  =    ANS(43)+A(I+1,I-1)
      ANS(44)  =    ANS(44)+A(2*I,I-1)
      ANS(45)  =    ANS(45)+A(2*I+1,I-1)
      ANS(46)  =    ANS(46)+A(2*I-1,I-1)
    2 ANS(47)  =    ANS(47)+A(I+1,2*I+1)

      IPSW     =    0
      DO  4  I =    1,47
      IF (ANS(I).EQ.CNST(I))  GO TO   4
      IF (IPSW.NE.0)          GO TO   3
      WRITE(6,100)
      IPSW     =    1
    3 WRITE(6,101)  I,CNST(I),ANS(I)
    4 CONTINUE
      IF (IPSW.NE.0)          GO TO   5
      WRITE(6,102)
      RETURN
    5 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,35H* TEST OF OPTIMIZATION ERROR LIST *//1H0,
     *              21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.      )
  101 FORMAT(1H0,5X,5HANS(,I3,5H ) = ,6X,I12,13X,I12)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
