      PROGRAM  MAIN
      INTEGER*4     ANS(50),CNST(50),A(10,10)
      DATA          ANS/50*0/,CNST/69,72,66,78,81,75,99,102,96,108,111,
     *    105,39,42,36,48,51,45,159,162,156,168,171,165,189,192,186,
     *    198,201,195,129,132,126,138,141,135,14*0/
      M1 = 10
      M2 = 50
      CALL SUB05 (ANS,CNST,A,M1,M2)
      STOP
      END
      SUBROUTINE SUB05 (ANS,CNST,A,M1,M2)
      INTEGER*4    ANS(M2),CNST(M2),A(M1,M1)

      K        =    0
      DO  1  I =    1,10
      DO  1  J =    1,10
      K        =    K+1
    1 A(I,J)   =    K

      I2 = 2
      I4 = 4
      I1 = 1
      DO  2  I =    I2,I4,I1

      ANS(1)   =    ANS(1)+A(I,I)
      ANS(2)   =    ANS(2)+A(I,I+1)
      ANS(3)   =    ANS(3)+A(I,I-1)
      ANS(4)   =    ANS(4)+A(I,2*I)
      ANS(5)   =    ANS(5)+A(I,2*I+1)
      ANS(6)   =    ANS(6)+A(I,2*I-1)

      ANS(7)   =    ANS(7)+A(I+1,I)
      ANS(8)   =    ANS(8)+A(I+1,I+1)
      ANS(9)   =    ANS(9)+A(I+1,I-1)
      ANS(10)  =    ANS(10)+A(I+1,2*I)
      ANS(11)  =    ANS(11)+A(I+1,2*I+1)
      ANS(12)  =    ANS(12)+A(I+1,2*I-1)

      ANS(13)  =    ANS(13)+A(I-1,I)
      ANS(14)  =    ANS(14)+A(I-1,I+1)
      ANS(15)  =    ANS(15)+A(I-1,I-1)
      ANS(16)  =    ANS(16)+A(I-1,2*I)
      ANS(17)  =    ANS(17)+A(I-1,2*I+1)
      ANS(18)  =    ANS(18)+A(I-1,2*I-1)

      ANS(19)  =    ANS(19)+A(2*I,I)
      ANS(20)  =    ANS(20)+A(2*I,I+1)
      ANS(21)  =    ANS(21)+A(2*I,I-1)
      ANS(22)  =    ANS(22)+A(2*I,2*I)
      ANS(23)  =    ANS(23)+A(2*I,2*I+1)
      ANS(24)  =    ANS(24)+A(2*I,2*I-1)

      ANS(25)  =    ANS(25)+A(2*I+1,I)
      ANS(26)  =    ANS(26)+A(2*I+1,I+1)
      ANS(27)  =    ANS(27)+A(2*I+1,I-1)
      ANS(28)  =    ANS(28)+A(2*I+1,2*I)
      ANS(29)  =    ANS(29)+A(2*I+1,2*I+1)
      ANS(30)  =    ANS(30)+A(2*I+1,2*I-1)

      ANS(31)  =    ANS(31)+A(2*I-1,I)
      ANS(32)  =    ANS(32)+A(2*I-1,I+1)
      ANS(33)  =    ANS(33)+A(2*I-1,I-1)
      ANS(34)  =    ANS(34)+A(2*I-1,2*I)
      ANS(35)  =    ANS(35)+A(2*I-1,2*I+1)
    2 ANS(36)  =    ANS(36)+A(2*I-1,2*I-1)

      IPSW     =    0
      DO  4  I =   1,50
      IF (CNST(I).EQ.ANS(I))  GO TO 4
      IF (IPSW.NE.0)          GO TO 3
      WRITE(6,100)
      IPSW     =    1
    3 WRITE(6,101)  I,CNST(I),ANS(I)
    4 CONTINUE
      IF (IPSW.NE.0)          GO TO 5
      WRITE(6,102)
      RETURN
    5 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,42H* TEST OF OPTIMIZATION...NO-5 ERROR LIST *//
     *           1H0,21X,15HCONSTANT VALUE.,12X,13HRESNLT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
