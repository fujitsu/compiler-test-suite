      PROGRAM  MAIN
      INTEGER*4     ANS(50),CNST(50),A(10,10,10)
      DATA          ANS/50*0/,CNST/35,37,33,40,42,38,55,57,53,60,62,58,
     *    15,17,13,20,22,18,85,87,83,90,92,88,105,107,103,110,112,108,
     *    65,67,63,70,72,68,14*0/
      M1 = 10
      M2 = 10
      M3 = 50
      CALL     SUB22 (ANS,CNST,A,M1,M2,M3)
      STOP
      END
      SUBROUTINE SUB22 (ANS,CNST,A,M1,M2,M3)
      INTEGER*4     ANS(M3),CNST(M3),A(M1,M2,M2)

      N        =    0
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      N        =    N+1
    1 A(I,J,K) =    N

      I1  = 1
      I2  = 2
      I3  = 3
      DO  2  I =    I2,3
      ANS(1)   =    ANS(1)+A(1,I,I)
      ANS(2)   =    ANS(2)+A(1,I,I+1)
      ANS(3)   =    ANS(3)+A(1,I,I-1)
      ANS(4)   =    ANS(4)+A(1,I,2*I)
      ANS(5)   =    ANS(5)+A(1,I,2*I+1)
    2 ANS(6)   =    ANS(6)+A(1,I,2*I-1)

      DO  3  I =    2,I3
      ANS(7)   =    ANS(7)+A(1,I+1,I)
      ANS(8)   =    ANS(8)+A(1,I+1,I+1)
      ANS(9)   =    ANS(9)+A(1,I+1,I-1)
      ANS(10)  =    ANS(10)+A(1,I+1,2*I)
      ANS(11)  =    ANS(11)+A(1,I+1,2*I+1)
    3 ANS(12)  =    ANS(12)+A(1,I+1,2*I-1)
      DO  4  I =    2,3,I1
      ANS(13)  =    ANS(13)+A(1,I-1,I)
      ANS(14)  =    ANS(14)+A(1,I-1,I+1)
      ANS(15)  =    ANS(15)+A(1,I-1,I-1)
      ANS(16)  =    ANS(16)+A(1,I-1,2*I)
      ANS(17)  =    ANS(17)+A(1,I-1,2*I+1)
    4 ANS(18)  =    ANS(18)+A(1,I-1,2*I-1)

      DO  5  I =    I2,I3
      ANS(19)  =    ANS(19)+A(1,2*I,I)
      ANS(20)  =    ANS(20)+A(1,2*I,I+1)
      ANS(21)  =    ANS(21)+A(1,2*I,I-1)
      ANS(22)  =    ANS(22)+A(1,2*I,2*I)
      ANS(23)  =    ANS(23)+A(1,2*I,2*I+1)
    5 ANS(24)  =    ANS(24)+A(1,2*I,2*I-1)
      DO  6  I =    I2,3,I1
      ANS(25)  =    ANS(25)+A(1,2*I+1,I)
      ANS(26)  =    ANS(26)+A(1,2*I+1,I+1)
      ANS(27)  =    ANS(27)+A(1,2*I+1,I-1)
      ANS(28)  =    ANS(28)+A(1,2*I+1,2*I)
      ANS(29)  =    ANS(29)+A(1,2*I+1,2*I+1)
    6 ANS(30)  =    ANS(30)+A(1,2*I+1,2*I-1)
      DO  7  I =    2,I3,I1
      ANS(31)  =    ANS(31)+A(1,2*I-1,I)
      ANS(32)  =    ANS(32)+A(1,2*I-1,I+1)
      ANS(33)  =    ANS(33)+A(1,2*I-1,I-1)
      ANS(34)  =    ANS(34)+A(1,2*I-1,2*I)
      ANS(35)  =    ANS(35)+A(1,2*I-1,2*I+1)
    7 ANS(36)  =    ANS(36)+A(1,2*I-1,2*I-1)
      IPSW     =    0
      DO  9  I =    1,50
      IF (ANS(I).EQ.CNST(I))       GO TO    9
      IF (IPSW.NE.0)               GO TO    8
      WRITE(6,100)
      IPSW     =    1
    8 WRITE(6,101)
    9 CONTINUE
      IF (IPSW.NE.0)               GO TO   10
      WRITE(6,102)
      STOP
   10 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-22 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
