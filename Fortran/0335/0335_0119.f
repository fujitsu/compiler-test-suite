      PROGRAM  MAIN
      INTEGER*4     ANS(50),CNST(50),A(10,10,10)
      DATA          ANS/50*0/,CNST/305,307,303,310,312,308,505,507,503,
     *    510,512,508,105,107,103,110,112,108,805,807,803,810,812,808,
     *   1005,1007,1003,1010,1012,1008,605,607,603,610,612,608,14*0/
      CALL     SUB27 (ANS,CNST,A)
      STOP
      END
      SUBROUTINE    SUB27 (ANS,CNST,A)
      INTEGER*4     ANS(50),CNST(50),A(10,10,10)
      N        =    0
      DO  1  I =    1,10
      DO  1  J =    1,10
      DO  1  K =    1,10
      N        =    N+1
    1 A(I,J,K) =    N

      DO  2  I =    2,3
      ANS(1)   =    ANS(1)+A(I,1,I)
      ANS(2)   =    ANS(2)+A(I,1,I+1)
      ANS(3)   =    ANS(3)+A(I,1,I-1)
      ANS(4)   =    ANS(4)+A(I,1,2*I)
      ANS(5)   =    ANS(5)+A(I,1,2*I+1)
    2 ANS(6)   =    ANS(6)+A(I,1,2*I-1)
      DO  3  I =    2,3
      ANS(7)   =    ANS(7)+A(I+1,1,I)
      ANS(8)   =    ANS(8)+A(I+1,1,I+1)
      ANS(9)   =    ANS(9)+A(I+1,1,I-1)
      ANS(10)  =    ANS(10)+A(I+1,1,2*I)
      ANS(11)  =    ANS(11)+A(I+1,1,2*I+1)
    3 ANS(12)  =    ANS(12)+A(I+1,1,2*I-1)
      DO  4  I =    2,3
      ANS(13)  =    ANS(13)+A(I-1,1,I)
      ANS(14)  =    ANS(14)+A(I-1,1,I+1)
      ANS(15)  =    ANS(15)+A(I-1,1,I-1)
      ANS(16)  =    ANS(16)+A(I-1,1,2*I)
      ANS(17)  =    ANS(17)+A(I-1,1,2*I+1)
    4 ANS(18)  =    ANS(18)+A(I-1,1,2*I-1)
      DO  5  I =    2,3
      ANS(19)  =    ANS(19)+A(2*I,1,I)
      ANS(20)  =    ANS(20)+A(2*I,1,I+1)
      ANS(21)  =    ANS(21)+A(2*I,1,I-1)
      ANS(22)  =    ANS(22)+A(2*I,1,2*I)
      ANS(23)  =    ANS(23)+A(2*I,1,2*I+1)
    5 ANS(24)  =    ANS(24)+A(2*I,1,2*I-1)
      DO  6  I =    2,3
      ANS(25)  =    ANS(25)+A(2*I+1,1,I)
      ANS(26)  =    ANS(26)+A(2*I+1,1,I+1)
      ANS(27)  =    ANS(27)+A(2*I+1,1,I-1)
      ANS(28)  =    ANS(28)+A(2*I+1,1,2*I)
      ANS(29)  =    ANS(29)+A(2*I+1,1,2*I+1)
    6 ANS(30)  =    ANS(30)+A(2*I+1,1,2*I-1)
      DO  7  I =    2,3
      ANS(31)  =    ANS(31)+A(2*I-1,1,I)
      ANS(32)  =    ANS(32)+A(2*I-1,1,I+1)
      ANS(33)  =    ANS(33)+A(2*I-1,1,I-1)
      ANS(34)  =    ANS(34)+A(2*I-1,1,2*I)
      ANS(35)  =    ANS(35)+A(2*I-1,1,2*I+1)
    7 ANS(36)  =    ANS(36)+A(2*I-1,1,2*I-1)
      IPSW     =    0
      DO  9  I =    1,50
      IF (CNST(I).EQ.ANS(I))  GO TO    9
      IF (IPSW.NE.0)          GO TO    8
      WRITE(6,100)
      IPSW     =    1
    8 WRITE(6,101)  I,CNST(I),ANS(I)
    9 CONTINUE
      IF (IPSW.NE.0)     GO TO   10
      WRITE(6,102)
      RETURN
   10 WRITE(6,103)
      RETURN
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-27 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
