      PROGRAM  MAIN
      INTEGER*4     ANS(50),A(10,10),CNST(50)
      DATA     ANS/50*0/,CNST/3,33,66,93,126,159,183,3,6,3,6,3,6,9,
     *                        3,33,33,36,33,36,39,33,3,3,6,3,6,9,3,
     *                       33,33,36,33,36,39,33,63,63,66,63,66,69,
     *                        63,3,6,9,3,12,15,9/
      M1    =    10
      CALL    SUB01 (ANS,CNST,A,M1)
      STOP
      END
      SUBROUTINE SUB01 (ANS,CNST,A,L1)
      INTEGER*4 ANS(50),CNST(50),A(L1,L1)
      K        =    1
      DO  1  I =    1,10
      DO  1  J =    1,10
      A(I,J)   =    K
    1 K        =    K+1

      M1       =    1
      M2       =    2
      I3  = 3
      DO  2  I =    M1,I3,M1
      ANS(1)   =    ANS(1)+A(1,1)
      ANS(2)   =    ANS(2)+A(2,M1)
      ANS(3)   =    ANS(3)+A(3,M1+1)
      ANS(4)   =    ANS(4)+A(4,M2-1)
      ANS(5)   =    ANS(5)+A(5,2*M1)
      ANS(6)   =    ANS(6)+A(6,2*M1+1)
      ANS(7)   =    ANS(7)+A(7,2*M1-1)
      ANS(8)   =    ANS(8)+A(M1,1)
      ANS(9)   =    ANS(9)+A(M1,M2)
      ANS(10)  =    ANS(10)+A(M1,M1)
      ANS(11)  =    ANS(11)+A(M1,M1+1)
      ANS(12)  =    ANS(12)+A(M1,M2-1)
      ANS(13)  =    ANS(13)+A(M1,2*M1)
      ANS(14)  =    ANS(14)+A(M1,2*M1+1)
      ANS(15)  =    ANS(15)+A(M1,2*M1-1)
      ANS(16)  =    ANS(16)+A(M1+1,1)
      ANS(17)  =    ANS(17)+A(M1+1,M1)
      ANS(18)  =    ANS(18)+A(M1+1,M1+1)
      ANS(19)  =    ANS(19)+A(M1+1,M2-1)
      ANS(20)  =    ANS(20)+A(M1+1,2*M1)
      ANS(21)  =    ANS(21)+A(M1+1,2*M1+1)
      ANS(22)  =    ANS(22)+A(M1+1,2*M1-1)
      ANS(23)  =    ANS(23)+A(M2-1,1)
      ANS(24)  =    ANS(24)+A(M2-1,M1)
      ANS(25)  =    ANS(25)+A(M2-1,M1+1)
      ANS(26)  =    ANS(26)+A(M2-1,M2-1)
      ANS(27)  =    ANS(27)+A(M2-1,2*M1)
      ANS(28)  =    ANS(28)+A(M2-1,2*M1+1)
      ANS(29)  =    ANS(29)+A(M2-1,2*M1-1)
      ANS(30)  =    ANS(30)+A(2*M1,1)
      ANS(31)  =    ANS(31)+A(2*M1,M1)
      ANS(32)  =    ANS(32)+A(2*M1,M1+1)
      ANS(33)  =    ANS(33)+A(2*M1,M2-1)
      ANS(34)  =    ANS(34)+A(2*M1,2*M1)
      ANS(35)  =    ANS(35)+A(2*M1,2*M1+1)
      ANS(36)  =    ANS(36)+A(2*M1,2*M1-1)
      ANS(37)  =    ANS(37)+A(2*M1+1,1)
      ANS(38)  =    ANS(38)+A(2*M1+1,M1)
      ANS(39)  =    ANS(39)+A(2*M1+1,M1+1)
      ANS(40)  =    ANS(40)+A(2*M1+1,M2-1)
      ANS(41)  =    ANS(41)+A(2*M1+1,2*M1)
      ANS(42)  =    ANS(42)+A(2*M1+1,2*M1+1)
      ANS(43)  =    ANS(43)+A(2*M1+1,2*M1-1)
      ANS(44)  =    ANS(44)+A(2*M1-1,1)
      ANS(45)  =    ANS(45)+A(2*M1-1,M2)
      ANS(46)  =    ANS(46)+A(2*M1-1,M2+1)
      ANS(47)  =    ANS(47)+A(2*M1-1,M2-1)
      ANS(48)  =    ANS(48)+A(2*M1-1,2*M2)
      ANS(49)  =    ANS(49)+A(2*M1-1,2*M2+1)
    2 ANS(50)  =    ANS(50)+A(2*M1-1,2*M2-1)

      IPSW     =    0
      DO  4  I =    1,50
      IF (ANS(I).EQ.CNST(I))  GO TO 4
      IF (IPSW.NE.0)          GO TO 3
      WRITE(6,100)
      IPSW    =     1
    3 WRITE(6,101)  I,CNST(I),ANS(I)
    4 CONTINUE
      IF (IPSW.NE.0)          GO TO 5
      WRITE(6,102)
      STOP
    5 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,35H* TEST OF OPTIMIZATION ERROR LIST * //1H0,
     *              21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,6X,I12,13X,I12)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
