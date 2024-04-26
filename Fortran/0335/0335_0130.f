      PROGRAM  MAIN
      INTEGER*4     ANS(50)
      DATA          ANS/50*0/
      N1       =    1
      N2       =    10
      N3       =    1
      CALL     SUB38 (ANS,N1,N2,N3)
      STOP
      END
      SUBROUTINE    SUB38 (ANS,N1,N2,N3)
      INTEGER*4     ANS(50)

      DO  1  I =    1,10
      DO  1  J =    1,10
    1 ANS(1)   =    ANS(1)+1
      DO  2  I =    1,10,1
      DO  2  J =    1,10,1
    2 ANS(2)   =    ANS(2)+1
      DO  3  I =    1,10
      DO  3  J =    1,10,N3
    3 ANS(3)   =    ANS(3)+1
      DO  4  I =    1,10
      DO  4  J =    1,N2,1
    4 ANS(4)   =    ANS(4)+1
      DO  5  I =    1,10
      DO  5  J =    1,N2,N3
    5 ANS(5)   =    ANS(5)+1
      DO  6  I =    1,10
      DO  6  J =    N1,N2
    6 ANS(6)   =    ANS(6)+1
      DO  7  I =    1,10
      DO  7  J =    N1,N2,N3
    7 ANS(7)   =    ANS(7)+1
      DO  8  I =    1,10
      DO  8  J =    N1,N2,N1
    8 ANS(8)   =    ANS(8)+1
      DO  9  I =    1,10,N3
      DO  9  J =    1,10,1
    9 ANS(9)   =    ANS(9)+1
      DO  10 I =    1,10,N3
      DO  10 J =    1,10,N3
   10 ANS(10)  =    ANS(10)+1
      DO  11 I =    1,10,N3
      DO  11 J =    1,N2,1
   11 ANS(11)  =    ANS(11)+1
      DO  12 I =    1,10,N3
      DO  12 J =    1,N2,N3
   12 ANS(12)  =    ANS(12)+1
      DO  13 I =    1,10,N3
      DO  13 J =    N1,10,1
   13 ANS(13)  =    ANS(13)+1
      DO  14 I =    1,10,N3
      DO  14 J =    N1,10,N3
   14 ANS(14)  =    ANS(14)+1
      DO  15 I =    1,10,N3
      DO  15 J =    N1,N2,1
   15 ANS(15)  =    ANS(15)+1
      DO  16 I =    1,10,N3
      DO  16 J =    N1,N2,N3
   16 ANS(16)  =    ANS(16)+1
      DO  17 I =    1,N2
      DO  17 J =    1,10
   17 ANS(17)  =    ANS(17)+1
      DO  18 I =    1,N2,1
      DO  18 J =    1,10,N3
   18 ANS(18)  =    ANS(18)+1
      DO  19 I =    1,N2
      DO  19 J =    1,N2,1
   19 ANS(19)  =    ANS(19)+1
      DO  20 I =    1,N2
      DO  20 J =    1,N2,N3
   20 ANS(20)  =    ANS(20)+1
      DO  21 I =    1,N2
      DO  21 J =    N1,10
   21 ANS(21)  =    ANS(21)+1
      DO  22 I =    1,N2
      DO  22 J =    N1,10,N3
   22 ANS(22)  =    ANS(22)+1
      DO  23 I =    1,N2
      DO  23 J =    N1,N2
   23 ANS(23)  =    ANS(23)+1
      DO  24 I =    1,N2
      DO  24 J =    N1,N2,N3
   24 ANS(24)  =    ANS(24)+1
      DO  25 I =    1,N2
      DO  25 J =    N1,N2,N1
   25 ANS(25)  =    ANS(25)+1
      DO  26 I =    N1,N2
      DO  26 J =    1,10,1
   26 ANS(26)  =    ANS(26)+1
      DO  27 I =    N1,N2
      DO  27 J =    1,10,N3
   27 ANS(27)  =    ANS(27)+1
      DO  28 I =    N1,N2
      DO  28 J =    1,N2
   28 ANS(28)  =    ANS(28)+1
      DO  29 I =    N1,N2
      DO  29 J =    1,N2,N3
   29 ANS(29)  =    ANS(29)+1
      DO  30 I =    N1,N2
      DO  30 J =    N1,10
   30 ANS(30)  =    ANS(30)+1
      DO  31 I =    N1,N2
      DO  31 J =    N1,10,1
   31 ANS(31)  =    ANS(31)+1
      DO  32 I =    N1,N2
      DO  32 J =    N1,10,N3
   32 ANS(32)  =    ANS(32)+1
      DO  33 I =    N1,N2
      DO  33 J =    N1,N2,1
   33 ANS(33)  =    ANS(33)+1
      DO  34 I =    N1,N2
      DO  34 J =    N1,N2,N3
   34 ANS(34)  =    ANS(34)+1
      DO  35 I =    N1,N2
      DO  35 J =    N1,N2,N1
   35 ANS(35)  =    ANS(35)+1
      DO  36 I =    N1,N2,N3
      DO  36 J =    1,10,1
   36 ANS(36)  =    ANS(36)+1
      DO  37 I =    N1,N2,N3
      DO  37 J =    1,10,N3
   37 ANS(37)  =    ANS(37)+1
      DO  38 I =    N1,N2,N3
      DO  38 J =    1,N2,1
   38 ANS(38)  =    ANS(38)+1
      DO  39 I =    N1,N2,N3
      DO  39 J =    1,N2,N3
   39 ANS(39)  =    ANS(39)+1
      DO  40 I =    N1,N2,N3
      DO  40 J =    N1,10,1
   40 ANS(40)  =    ANS(40)+1
      DO  41 I =    N1,N2,N3
      DO  41 J =    N1,10,N1
   41 ANS(41)  =    ANS(41)+1
      DO  42 I =    N1,N2,N3
      DO  42 J =    N1,N2,1
   42 ANS(42)  =    ANS(42)+1
      DO  43 I =    N1,N2,N3
      DO  43 J =    N1,N2,N3
   43 ANS(43)  =    ANS(43)+1

      IPSW     =    0
      DO  45 I =    1,43
      IF  (ANS(I).EQ.100)     GO TO 45
      IF  (IPSW.NE.0)         GO TO 44
      WRITE(6,100)
      IPSW     =    1
   44 WRITE(6,101)  I,ANS(I)
   45 CONTINUE
      IF (IPSW.NE.0)     GO TO   46
      WRITE(6,102)
      RETURN
   46 WRITE(6,103)
      RETURN
  100 FORMAT (1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-38 ) ERROR LIST,
     *    2H *//1H0,21X,15HCONSTANT VALUE.,12X,13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,15X,3H100,15X,I10)
  102 FORMAT(1H1/1H0,5X,2HOK)
  103 FORMAT(1H0,5X,5HERROR)
      END
